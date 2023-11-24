# -*- encoding: utf-8 -*-
# -*- frozen_stringing_literal: true -*-
# -*- warn_indent: true -*-

ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /(lb)/i, "\1s"
  inflect.plural /(meter)/i, '\1s'
  inflect.plural /(metre)/i, '\1s'

  inflect.singular /(lb)s?/i, "\1"
  inflect.singular /(metre)s?/i, '\1'
end
