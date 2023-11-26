module UnitMeasurements
  class ExpressionParser
    OPERATORS = {
      '+' => { precedence: 1, associativity: :left },
      '-' => { precedence: 1, associativity: :left },
      '*' => { precedence: 2, associativity: :left },
      '/' => { precedence: 2, associativity: :left }
    }.freeze

    class << self
      def evaluate(expression)
        output_queue = []
        operator_stack = []

        tokens = tokenize(expression)

        tokens.each do |token|
          if numeric?(token)
            output_queue << token.to_f
          elsif OPERATORS.key?(token)
            while operator_stack.any? &&
                  precedence_greater_or_equal?(operator_stack.last, token)
              output_queue << operator_stack.pop
            end
            operator_stack << token
          elsif token == '('
            operator_stack << token
          elsif token == ')'
            while operator_stack.last != '('
              output_queue << operator_stack.pop
              raise 'Mismatched parentheses' if operator_stack.empty?
            end
            operator_stack.pop # Discard '('
          else
            raise 'Invalid token: ' + token
          end
        end

        while operator_stack.any?
          output_queue << operator_stack.pop
        end

        calculate(output_queue)
      end

      private

      def tokenize(expression)
        escaped_operators = Regexp.escape(OPERATORS.keys.join) # Escape special characters
        expression.gsub(/([#{escaped_operators}()])/, ' \1 ').split
      end

      def numeric?(token)
        token.is_a?(Numeric) || (token.is_a?(String) && token.match?(/\A\d+(\.\d+)?\z/))
      end

      def precedence_greater_or_equal?(op1, op2)
        return false unless OPERATORS.key?(op1) && OPERATORS.key?(op2)

        op1_info = OPERATORS[op1]
        op2_info = OPERATORS[op2]

        op1_info[:precedence] > op2_info[:precedence] ||
          (op1_info[:precedence] == op2_info[:precedence] &&
          op1_info[:associativity] == :left)
      end

      def calculate(tokens)
        stack = []

        tokens.each do |token|
          if numeric?(token)
            stack << token
          elsif OPERATORS.key?(token)
            raise 'Insufficient operands' if stack.size < 2

            operand2 = stack.pop
            operand1 = stack.pop

            result = perform_operation(operand1, operand2, token)
            stack << result
          else
            raise 'Invalid token in evaluation: ' + token
          end
        end

        raise 'Invalid expression' if stack.size != 1

        stack.first
      end

      def perform_operation(operand1, operand2, operator)
        operand1.send(operator, operand2)
      end
    end
  end
end
