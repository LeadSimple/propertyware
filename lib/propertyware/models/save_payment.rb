=begin
#Open API, powered by Propertyware


The version of the OpenAPI document: 1.0
Contact: support@propertyware.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module Propertyware
  # Tenant Payment for Request
  class SavePayment
    # Amount.
    attr_accessor :amount

    # Comments.
    attr_accessor :comments

    # Id of the contact associated with lease payment
    attr_accessor :contact_id

    # Post Date.
    attr_accessor :date

    # Payment deposit date.
    attr_accessor :deposit_date

    # Bank GL account ID to deposit.
    attr_accessor :destination_account_id

    # Id of the lease associated with this payment.
    attr_accessor :lease_id

    # Payment type.
    attr_accessor :payment_type

    # Payment reference number
    attr_accessor :ref_no

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'comments' => :'comments',
        :'contact_id' => :'contactID',
        :'date' => :'date',
        :'deposit_date' => :'depositDate',
        :'destination_account_id' => :'destinationAccountID',
        :'lease_id' => :'leaseID',
        :'payment_type' => :'paymentType',
        :'ref_no' => :'refNo'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Float',
        :'comments' => :'String',
        :'contact_id' => :'Integer',
        :'date' => :'Date',
        :'deposit_date' => :'Date',
        :'destination_account_id' => :'Integer',
        :'lease_id' => :'Integer',
        :'payment_type' => :'String',
        :'ref_no' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::SavePayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::SavePayment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'deposit_date')
        self.deposit_date = attributes[:'deposit_date']
      end

      if attributes.key?(:'destination_account_id')
        self.destination_account_id = attributes[:'destination_account_id']
      end

      if attributes.key?(:'lease_id')
        self.lease_id = attributes[:'lease_id']
      end

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end

      if attributes.key?(:'ref_no')
        self.ref_no = attributes[:'ref_no']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @contact_id.nil?
        invalid_properties.push('invalid value for "contact_id", contact_id cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @deposit_date.nil?
        invalid_properties.push('invalid value for "deposit_date", deposit_date cannot be nil.')
      end

      if @destination_account_id.nil?
        invalid_properties.push('invalid value for "destination_account_id", destination_account_id cannot be nil.')
      end

      if @lease_id.nil?
        invalid_properties.push('invalid value for "lease_id", lease_id cannot be nil.')
      end

      if @payment_type.nil?
        invalid_properties.push('invalid value for "payment_type", payment_type cannot be nil.')
      end

      if @ref_no.nil?
        invalid_properties.push('invalid value for "ref_no", ref_no cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @contact_id.nil?
      return false if @date.nil?
      return false if @deposit_date.nil?
      return false if @destination_account_id.nil?
      return false if @lease_id.nil?
      return false if @payment_type.nil?
      payment_type_validator = EnumAttributeValidator.new('String', ["CHECK", "CHECK21", "CASHIERS_CHECK", "CREDIT_CARD", "CASH", "MONEY_ORDER", "OTHER", "CLICKPAY", "SECTION8", "EPAY", "ECHECK", "NACHA", "RENTMONEY", "PUBLIC_ASSISTANCE", "PAYMENT_TYPE_NA"])
      return false unless payment_type_validator.valid?(@payment_type)
      return false if @ref_no.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["CHECK", "CHECK21", "CASHIERS_CHECK", "CREDIT_CARD", "CASH", "MONEY_ORDER", "OTHER", "CLICKPAY", "SECTION8", "EPAY", "ECHECK", "NACHA", "RENTMONEY", "PUBLIC_ASSISTANCE", "PAYMENT_TYPE_NA"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value #{ payment_type.inspect } for \"payment_type\", must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          comments == o.comments &&
          contact_id == o.contact_id &&
          date == o.date &&
          deposit_date == o.deposit_date &&
          destination_account_id == o.destination_account_id &&
          lease_id == o.lease_id &&
          payment_type == o.payment_type &&
          ref_no == o.ref_no
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, comments, contact_id, date, deposit_date, destination_account_id, lease_id, payment_type, ref_no].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Propertyware.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

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
