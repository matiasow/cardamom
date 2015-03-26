require 'cardamom/string_helpers'

module Cardamom
  # Helpers to handle ruby hashes
  module HashHelpers
    def symbolize_keys(hash)
      transform_keys(hash) { |k| k.to_sym }
    end

    def underscore_keys(hash)
      transform_keys(hash) { |k| underscore(k.to_s) }
    end

    def camelize_keys(hash)
      transform_keys(hash) { |k| camelize(k.to_s) }
    end

    def stringify_keys(hash)
      transform_keys(hash) { |k| k.to_s }
    end

    def select_keys(hash, *args)
      hash.select { |k| args.include?(k) }
    end

    def transform_keys(hash, &block)
      result = {}
      hash.each do |k, v|
        new_k = k.is_a?(String) || k.is_a?(Symbol) ? block.call(k.to_s) : k
        new_v = v.is_a?(Hash) ? transform_keys(v, &block) : v
        result[new_k] = new_v
      end
      result
    end
  end
end
