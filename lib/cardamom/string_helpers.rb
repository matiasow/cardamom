require 'unicode_utils'

module StringHelpers
  # Upcase unicode string
  def upcase(str)
    UnicodeUtils.upcase(str)
  end

  # Downcase unicode string
  def downcase(str)
    UnicodeUtils.downcase(str)
  end

  # Camelize string
  #
  # Example:
  # camelize 'camelize_this_string'
  # => 'CamelizeThisString'
  def camelize(str)
    s = str.to_s.dup
    s.sub!(/^[a-z\d]*/) { $&.capitalize }
    s.gsub!(/(?:_|(\/))([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
    s.gsub!(/\//, '::')
    s
  end

  # Underscore string
  #
  # Example: 
  # underscore 'UnderscoreThisString'
  # => 'underscore_this_string'
  def underscore(str)
    s = str.to_s.dup
    return s unless s =~ /[A-Z-]|::/
    s.gsub!(/::/, '/')
    s.gsub!(/(?:(?<=([A-Za-z\d]))|\b)(?=\b|[^a-z])/) { "#{$1 && '_'}#{$2.to_s.downcase}" }
    s.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2')
    s.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
    s.tr!("-", "_")
    s.downcase!
    s[0..-2]
  end

  # Sanitize a "dirty" string by removing dots, dashes, slashes, apostrophes, multiple spaces, etc.
  # Specially useful for data cleansing routines
  #
  # Example:
  # sanitize_dirty_string "Ge-o/rg.e        O'Hara"
  # => "George O Hara"
  def sanitize_dirty_string(str)
    str.strip.gsub(".", "")
             .gsub("-", "")
             .gsub("_", "")
             .gsub("/", "")
             .gsub("'", " ")
             .gsub(/\s+/, ' ')
  end
end
