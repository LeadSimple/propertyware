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
  # General Ledger Account
  class Account
    # Account code.
    attr_accessor :account_code

    # Account number.
    attr_accessor :account_number

    # Account type.
    attr_accessor :account_type

    # Indicates if the account is active.
    attr_accessor :active

    # Indicates if prepayments should be auto applied.
    attr_accessor :auto_apply_prepayment

    # Bank account holder name.
    attr_accessor :bank_account_holder

    # Bank account number.
    attr_accessor :bank_account_number

    # Bank address.
    attr_accessor :bank_address

    # Bank address 2.
    attr_accessor :bank_address2

    # Bank city.
    attr_accessor :bank_city

    # Bank institution name.
    attr_accessor :bank_institution

    # Bank account routing number.
    attr_accessor :bank_routing_number

    # Bank state.
    attr_accessor :bank_state

    # Bank zip code.
    attr_accessor :bank_zip

    # Indicates if account is a CAM recovery account.
    attr_accessor :cam_recovery_account

    # User who created the record.
    attr_accessor :created_by

    # Date and time the record was created. (Timezone: UTC)
    attr_accessor :created_date_time

    # Description of the account.
    attr_accessor :description

    # Indicates if account is a discount account.
    attr_accessor :discount_account

    # Indicates if account is a escrow account.
    attr_accessor :escrow_account

    # Indicates if account is excluded from Form1099.
    attr_accessor :exclude_from1099

    # Indicates if account is excluded from paying in full.
    attr_accessor :exclude_from_pay_in_full

    # Indicates if excluding from late fees.
    attr_accessor :exclude_late_fee

    # Unique identifier.
    attr_accessor :id

    # User who last modified the record.
    attr_accessor :last_modified_by

    # Date and time the record was last modified. (Timezone: UTC)
    attr_accessor :last_modified_date_time

    # Indicates if a late fee is applicable.
    attr_accessor :late_fee_applicable

    # Account name.
    attr_accessor :name

    # Parent account ID.
    attr_accessor :parent_gl_account_id

    # Parent account reference.
    attr_accessor :parent_ref

    # Account payment priority.
    attr_accessor :payment_priority

    # Indicates if account is a rent account.
    attr_accessor :rent_account

    # Indicates if account is a section8 account.
    attr_accessor :section8

    # Indicates if the account is security deposit account
    attr_accessor :security_deposit_account

    # Indicates if account is a tax account.
    attr_accessor :tax_account

    # Indicates if the account balance should be transferred to retained earnings.
    attr_accessor :transfer_balance_to_retained_earnings

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_code' => :'accountCode',
        :'account_number' => :'accountNumber',
        :'account_type' => :'accountType',
        :'active' => :'active',
        :'auto_apply_prepayment' => :'autoApplyPrepayment',
        :'bank_account_holder' => :'bankAccountHolder',
        :'bank_account_number' => :'bankAccountNumber',
        :'bank_address' => :'bankAddress',
        :'bank_address2' => :'bankAddress2',
        :'bank_city' => :'bankCity',
        :'bank_institution' => :'bankInstitution',
        :'bank_routing_number' => :'bankRoutingNumber',
        :'bank_state' => :'bankState',
        :'bank_zip' => :'bankZip',
        :'cam_recovery_account' => :'camRecoveryAccount',
        :'created_by' => :'createdBy',
        :'created_date_time' => :'createdDateTime',
        :'description' => :'description',
        :'discount_account' => :'discountAccount',
        :'escrow_account' => :'escrowAccount',
        :'exclude_from1099' => :'excludeFrom1099',
        :'exclude_from_pay_in_full' => :'excludeFromPayInFull',
        :'exclude_late_fee' => :'excludeLateFee',
        :'id' => :'id',
        :'last_modified_by' => :'lastModifiedBy',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'late_fee_applicable' => :'lateFeeApplicable',
        :'name' => :'name',
        :'parent_gl_account_id' => :'parentGLAccountId',
        :'parent_ref' => :'parentRef',
        :'payment_priority' => :'paymentPriority',
        :'rent_account' => :'rentAccount',
        :'section8' => :'section8',
        :'security_deposit_account' => :'securityDepositAccount',
        :'tax_account' => :'taxAccount',
        :'transfer_balance_to_retained_earnings' => :'transferBalanceToRetainedEarnings'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_code' => :'String',
        :'account_number' => :'String',
        :'account_type' => :'String',
        :'active' => :'Boolean',
        :'auto_apply_prepayment' => :'Boolean',
        :'bank_account_holder' => :'String',
        :'bank_account_number' => :'String',
        :'bank_address' => :'String',
        :'bank_address2' => :'String',
        :'bank_city' => :'String',
        :'bank_institution' => :'String',
        :'bank_routing_number' => :'String',
        :'bank_state' => :'String',
        :'bank_zip' => :'String',
        :'cam_recovery_account' => :'Boolean',
        :'created_by' => :'String',
        :'created_date_time' => :'Time',
        :'description' => :'String',
        :'discount_account' => :'Boolean',
        :'escrow_account' => :'Boolean',
        :'exclude_from1099' => :'Boolean',
        :'exclude_from_pay_in_full' => :'Boolean',
        :'exclude_late_fee' => :'Boolean',
        :'id' => :'Integer',
        :'last_modified_by' => :'String',
        :'last_modified_date_time' => :'Time',
        :'late_fee_applicable' => :'Boolean',
        :'name' => :'String',
        :'parent_gl_account_id' => :'Integer',
        :'parent_ref' => :'String',
        :'payment_priority' => :'Integer',
        :'rent_account' => :'Boolean',
        :'section8' => :'Boolean',
        :'security_deposit_account' => :'Boolean',
        :'tax_account' => :'Boolean',
        :'transfer_balance_to_retained_earnings' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::Account` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::Account`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_code')
        self.account_code = attributes[:'account_code']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'auto_apply_prepayment')
        self.auto_apply_prepayment = attributes[:'auto_apply_prepayment']
      end

      if attributes.key?(:'bank_account_holder')
        self.bank_account_holder = attributes[:'bank_account_holder']
      end

      if attributes.key?(:'bank_account_number')
        self.bank_account_number = attributes[:'bank_account_number']
      end

      if attributes.key?(:'bank_address')
        self.bank_address = attributes[:'bank_address']
      end

      if attributes.key?(:'bank_address2')
        self.bank_address2 = attributes[:'bank_address2']
      end

      if attributes.key?(:'bank_city')
        self.bank_city = attributes[:'bank_city']
      end

      if attributes.key?(:'bank_institution')
        self.bank_institution = attributes[:'bank_institution']
      end

      if attributes.key?(:'bank_routing_number')
        self.bank_routing_number = attributes[:'bank_routing_number']
      end

      if attributes.key?(:'bank_state')
        self.bank_state = attributes[:'bank_state']
      end

      if attributes.key?(:'bank_zip')
        self.bank_zip = attributes[:'bank_zip']
      end

      if attributes.key?(:'cam_recovery_account')
        self.cam_recovery_account = attributes[:'cam_recovery_account']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_date_time')
        self.created_date_time = attributes[:'created_date_time']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'discount_account')
        self.discount_account = attributes[:'discount_account']
      end

      if attributes.key?(:'escrow_account')
        self.escrow_account = attributes[:'escrow_account']
      end

      if attributes.key?(:'exclude_from1099')
        self.exclude_from1099 = attributes[:'exclude_from1099']
      end

      if attributes.key?(:'exclude_from_pay_in_full')
        self.exclude_from_pay_in_full = attributes[:'exclude_from_pay_in_full']
      end

      if attributes.key?(:'exclude_late_fee')
        self.exclude_late_fee = attributes[:'exclude_late_fee']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_modified_by')
        self.last_modified_by = attributes[:'last_modified_by']
      end

      if attributes.key?(:'last_modified_date_time')
        self.last_modified_date_time = attributes[:'last_modified_date_time']
      end

      if attributes.key?(:'late_fee_applicable')
        self.late_fee_applicable = attributes[:'late_fee_applicable']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'parent_gl_account_id')
        self.parent_gl_account_id = attributes[:'parent_gl_account_id']
      end

      if attributes.key?(:'parent_ref')
        self.parent_ref = attributes[:'parent_ref']
      end

      if attributes.key?(:'payment_priority')
        self.payment_priority = attributes[:'payment_priority']
      end

      if attributes.key?(:'rent_account')
        self.rent_account = attributes[:'rent_account']
      end

      if attributes.key?(:'section8')
        self.section8 = attributes[:'section8']
      end

      if attributes.key?(:'security_deposit_account')
        self.security_deposit_account = attributes[:'security_deposit_account']
      end

      if attributes.key?(:'tax_account')
        self.tax_account = attributes[:'tax_account']
      end

      if attributes.key?(:'transfer_balance_to_retained_earnings')
        self.transfer_balance_to_retained_earnings = attributes[:'transfer_balance_to_retained_earnings']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_code == o.account_code &&
          account_number == o.account_number &&
          account_type == o.account_type &&
          active == o.active &&
          auto_apply_prepayment == o.auto_apply_prepayment &&
          bank_account_holder == o.bank_account_holder &&
          bank_account_number == o.bank_account_number &&
          bank_address == o.bank_address &&
          bank_address2 == o.bank_address2 &&
          bank_city == o.bank_city &&
          bank_institution == o.bank_institution &&
          bank_routing_number == o.bank_routing_number &&
          bank_state == o.bank_state &&
          bank_zip == o.bank_zip &&
          cam_recovery_account == o.cam_recovery_account &&
          created_by == o.created_by &&
          created_date_time == o.created_date_time &&
          description == o.description &&
          discount_account == o.discount_account &&
          escrow_account == o.escrow_account &&
          exclude_from1099 == o.exclude_from1099 &&
          exclude_from_pay_in_full == o.exclude_from_pay_in_full &&
          exclude_late_fee == o.exclude_late_fee &&
          id == o.id &&
          last_modified_by == o.last_modified_by &&
          last_modified_date_time == o.last_modified_date_time &&
          late_fee_applicable == o.late_fee_applicable &&
          name == o.name &&
          parent_gl_account_id == o.parent_gl_account_id &&
          parent_ref == o.parent_ref &&
          payment_priority == o.payment_priority &&
          rent_account == o.rent_account &&
          section8 == o.section8 &&
          security_deposit_account == o.security_deposit_account &&
          tax_account == o.tax_account &&
          transfer_balance_to_retained_earnings == o.transfer_balance_to_retained_earnings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_code, account_number, account_type, active, auto_apply_prepayment, bank_account_holder, bank_account_number, bank_address, bank_address2, bank_city, bank_institution, bank_routing_number, bank_state, bank_zip, cam_recovery_account, created_by, created_date_time, description, discount_account, escrow_account, exclude_from1099, exclude_from_pay_in_full, exclude_late_fee, id, last_modified_by, last_modified_date_time, late_fee_applicable, name, parent_gl_account_id, parent_ref, payment_priority, rent_account, section8, security_deposit_account, tax_account, transfer_balance_to_retained_earnings].hash
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
