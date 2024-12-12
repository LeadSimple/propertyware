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
  # Save Portfolio 
  class SavePortfolio
    # Abbreviated name assigned to the portfolio.
    attr_accessor :abbreviation

    # Cash or accrual accounting basis.
    attr_accessor :cash_accrual

    # Date when the accounting period for the portfolio will close.
    attr_accessor :closing_date

    # Portfolio Default Bank Account ID
    attr_accessor :default_bank_account_id

    # Portfolio Default Security Deposit Bank Account ID
    attr_accessor :default_secdep_account_id

    # Indicates that the owner should not be paid owner draws.
    attr_accessor :do_not_pay_owner_draw

    # Monthly or yearly Maintenance Spending Limit set for the portfolio for maintenance bills created by work orders.
    attr_accessor :maintenance_spending_limit

    # Monthly or Yearly Maintenance Spending Limit Time set for the portfolio for maintenance bills created by work orders.
    attr_accessor :maintenance_spending_limit_time

    # Name of the portfolio.
    attr_accessor :name

    # Portfolio owner Ids
    attr_accessor :owner_ids

    # Portfolio Owner Statement Report ID
    attr_accessor :owner_statement_report_id

    # Portfolio owners.
    attr_accessor :owners

    # Sticky notes. Maximum 500 characters.
    attr_accessor :sticky_note

    # Minimum balance to be maintained within the portfolio at all times.
    attr_accessor :target_operating_reserve

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
        :'abbreviation' => :'abbreviation',
        :'cash_accrual' => :'cashAccrual',
        :'closing_date' => :'closingDate',
        :'default_bank_account_id' => :'defaultBankAccountID',
        :'default_secdep_account_id' => :'defaultSecdepAccountID',
        :'do_not_pay_owner_draw' => :'doNotPayOwnerDraw',
        :'maintenance_spending_limit' => :'maintenanceSpendingLimit',
        :'maintenance_spending_limit_time' => :'maintenanceSpendingLimitTime',
        :'name' => :'name',
        :'owner_ids' => :'ownerIds',
        :'owner_statement_report_id' => :'ownerStatementReportID',
        :'owners' => :'owners',
        :'sticky_note' => :'stickyNote',
        :'target_operating_reserve' => :'targetOperatingReserve'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'abbreviation' => :'String',
        :'cash_accrual' => :'String',
        :'closing_date' => :'Date',
        :'default_bank_account_id' => :'Integer',
        :'default_secdep_account_id' => :'Integer',
        :'do_not_pay_owner_draw' => :'Boolean',
        :'maintenance_spending_limit' => :'Float',
        :'maintenance_spending_limit_time' => :'String',
        :'name' => :'String',
        :'owner_ids' => :'Array<Integer>',
        :'owner_statement_report_id' => :'Integer',
        :'owners' => :'Array<SaveOwner>',
        :'sticky_note' => :'String',
        :'target_operating_reserve' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::SavePortfolio` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::SavePortfolio`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'abbreviation')
        self.abbreviation = attributes[:'abbreviation']
      end

      if attributes.key?(:'cash_accrual')
        self.cash_accrual = attributes[:'cash_accrual']
      end

      if attributes.key?(:'closing_date')
        self.closing_date = attributes[:'closing_date']
      end

      if attributes.key?(:'default_bank_account_id')
        self.default_bank_account_id = attributes[:'default_bank_account_id']
      end

      if attributes.key?(:'default_secdep_account_id')
        self.default_secdep_account_id = attributes[:'default_secdep_account_id']
      end

      if attributes.key?(:'do_not_pay_owner_draw')
        self.do_not_pay_owner_draw = attributes[:'do_not_pay_owner_draw']
      end

      if attributes.key?(:'maintenance_spending_limit')
        self.maintenance_spending_limit = attributes[:'maintenance_spending_limit']
      end

      if attributes.key?(:'maintenance_spending_limit_time')
        self.maintenance_spending_limit_time = attributes[:'maintenance_spending_limit_time']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'owner_ids')
        if (value = attributes[:'owner_ids']).is_a?(Array)
          self.owner_ids = value
        end
      end

      if attributes.key?(:'owner_statement_report_id')
        self.owner_statement_report_id = attributes[:'owner_statement_report_id']
      end

      if attributes.key?(:'owners')
        if (value = attributes[:'owners']).is_a?(Array)
          self.owners = value
        end
      end

      if attributes.key?(:'sticky_note')
        self.sticky_note = attributes[:'sticky_note']
      end

      if attributes.key?(:'target_operating_reserve')
        self.target_operating_reserve = attributes[:'target_operating_reserve']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @abbreviation.nil?
        invalid_properties.push('invalid value for "abbreviation", abbreviation cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @abbreviation.nil?
      cash_accrual_validator = EnumAttributeValidator.new('String', ["COMPANY_DEFAULT", "CASH", "ACCRUAL"])
      return false unless cash_accrual_validator.valid?(@cash_accrual)
      maintenance_spending_limit_time_validator = EnumAttributeValidator.new('String', ["NO_LIMIT", "DOLLAR_PER_MONTH", "DOLLAR_PER_YEAR"])
      return false unless maintenance_spending_limit_time_validator.valid?(@maintenance_spending_limit_time)
      return false if @name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash_accrual Object to be assigned
    def cash_accrual=(cash_accrual)
      validator = EnumAttributeValidator.new('String', ["COMPANY_DEFAULT", "CASH", "ACCRUAL"])
      unless validator.valid?(cash_accrual)
        fail ArgumentError, "invalid value #{ cash_accrual.inspect } for \"cash_accrual\", must be one of #{validator.allowable_values}."
      end
      @cash_accrual = cash_accrual
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maintenance_spending_limit_time Object to be assigned
    def maintenance_spending_limit_time=(maintenance_spending_limit_time)
      validator = EnumAttributeValidator.new('String', ["NO_LIMIT", "DOLLAR_PER_MONTH", "DOLLAR_PER_YEAR"])
      unless validator.valid?(maintenance_spending_limit_time)
        fail ArgumentError, "invalid value #{ maintenance_spending_limit_time.inspect } for \"maintenance_spending_limit_time\", must be one of #{validator.allowable_values}."
      end
      @maintenance_spending_limit_time = maintenance_spending_limit_time
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          abbreviation == o.abbreviation &&
          cash_accrual == o.cash_accrual &&
          closing_date == o.closing_date &&
          default_bank_account_id == o.default_bank_account_id &&
          default_secdep_account_id == o.default_secdep_account_id &&
          do_not_pay_owner_draw == o.do_not_pay_owner_draw &&
          maintenance_spending_limit == o.maintenance_spending_limit &&
          maintenance_spending_limit_time == o.maintenance_spending_limit_time &&
          name == o.name &&
          owner_ids == o.owner_ids &&
          owner_statement_report_id == o.owner_statement_report_id &&
          owners == o.owners &&
          sticky_note == o.sticky_note &&
          target_operating_reserve == o.target_operating_reserve
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [abbreviation, cash_accrual, closing_date, default_bank_account_id, default_secdep_account_id, do_not_pay_owner_draw, maintenance_spending_limit, maintenance_spending_limit_time, name, owner_ids, owner_statement_report_id, owners, sticky_note, target_operating_reserve].hash
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
