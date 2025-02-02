# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # AccessRuleCriteria model.
  class Waas::Models::AccessRuleCriteria
    CONDITION_ENUM = [
      CONDITION_URL_IS = 'URL_IS'.freeze,
      CONDITION_URL_IS_NOT = 'URL_IS_NOT'.freeze,
      CONDITION_URL_STARTS_WITH = 'URL_STARTS_WITH'.freeze,
      CONDITION_URL_PART_ENDS_WITH = 'URL_PART_ENDS_WITH'.freeze,
      CONDITION_URL_PART_CONTAINS = 'URL_PART_CONTAINS'.freeze,
      CONDITION_URL_REGEX = 'URL_REGEX'.freeze,
      CONDITION_IP_IS = 'IP_IS'.freeze,
      CONDITION_IP_IS_NOT = 'IP_IS_NOT'.freeze,
      CONDITION_HTTP_HEADER_CONTAINS = 'HTTP_HEADER_CONTAINS'.freeze,
      CONDITION_COUNTRY_IS = 'COUNTRY_IS'.freeze,
      CONDITION_COUNTRY_IS_NOT = 'COUNTRY_IS_NOT'.freeze,
      CONDITION_USER_AGENT_IS = 'USER_AGENT_IS'.freeze,
      CONDITION_USER_AGENT_IS_NOT = 'USER_AGENT_IS_NOT'.freeze,
      CONDITION_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The criteria the access rule uses to determine if action should be taken on a request.
    #
    # - **URL_IS:** Matches if the concatenation of request URL path and query is identical to the contents of the `value` field.
    # - **URL_IS_NOT:** Matches if the concatenation of request URL path and query is not identical to the contents of the `value` field.
    # - **URL_STARTS_WITH:** Matches if the concatenation of request URL path and query starts with the contents of the `value` field.
    # - **URL_PART_ENDS_WITH:** Matches if the concatenation of request URL path and query ends with the contents of the `value` field.
    # - **URL_PART_CONTAINS:** Matches if the concatenation of request URL path and query contains the contents of the `value` field.
    # - **URL_REGEX:** Matches if the request is described by the regular expression in the `value` field.
    # - **IP_IS:** Matches if the request originates from an IP address in the `value` field.
    # - **IP_IS_NOT:** Matches if the request does not originate from an IP address in the `value` field.
    # - **HTTP_HEADER_CONTAINS:** Matches if the request includes an HTTP header field whose name and value correspond to data specified in the `value` field with a separating colon. **Example:** `host:test.example.com` where `host` is the name of the field and `test.example.com` is the value of the host field. Comparison is independently applied to every header field whose name is a case insensitive match, and the value is required to be case-sensitive identical.
    # - **COUNTRY_IS:** Matches if the request originates from a country in the `value` field. Country codes are in ISO 3166-1 alpha-2 format. For a list of codes, see [ISO's website](https://www.iso.org/obp/ui/#search/code/).
    # - **COUNTRY_IS_NOT:** Matches if the request does not originate from a country in the `value` field. Country codes are in ISO 3166-1 alpha-2 format. For a list of codes, see [ISO's website](https://www.iso.org/obp/ui/#search/code/).
    # - **USER_AGENT_IS:** Matches if the requesting user agent is identical to the contents of the `value` field. Example: `Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0`
    # - **USER_AGENT_IS_NOT:** Matches if the requesting user agent is not identical to the contents of the `value` field. Example: `Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0`
    # @return [String]
    attr_reader :condition

    # **[Required]** The criteria value.
    # @return [String]
    attr_accessor :value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'condition': :'condition',
        'value': :'value'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'condition': :'String',
        'value': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :condition The value to assign to the {#condition} property
    # @option attributes [String] :value The value to assign to the {#value} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.condition = attributes[:'condition'] if attributes[:'condition']

      self.value = attributes[:'value'] if attributes[:'value']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] condition Object to be assigned
    def condition=(condition)
      # rubocop:disable Style/ConditionalAssignment
      if condition && !CONDITION_ENUM.include?(condition)
        OCI.logger.debug("Unknown value for 'condition' [" + condition + "]. Mapping to 'CONDITION_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @condition = CONDITION_UNKNOWN_ENUM_VALUE
      else
        @condition = condition
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        condition == other.condition &&
        value == other.value
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [condition, value].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
