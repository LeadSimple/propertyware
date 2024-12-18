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
  # Lease
  class Lease
    # Indicates if lease is Active.
    attr_accessor :active

    # Lease addendum(s).
    attr_accessor :addendums

    # Lease Accounts Receivable Balance
    attr_accessor :ar_balance

    # Property base rent.
    attr_accessor :base_rent

    # Id of the building associated with this lease.
    attr_accessor :building_id

    # Description of the lease.
    attr_accessor :comments

    # List of the current tenants on the lease.
    attr_accessor :contacts

    # User who created the record.
    attr_accessor :created_by

    # Date and time the record was created. (Timezone: UTC)
    attr_accessor :created_date_time

    # Custom fields.
    attr_accessor :custom_fields

    # End date of the lease term.
    attr_accessor :end_date

    # Unique identifier.
    attr_accessor :id

    # Lease identification number.
    attr_accessor :id_number

    # User who last modified the record.
    attr_accessor :last_modified_by

    # Date and time the record was last modified. (Timezone: UTC)
    attr_accessor :last_modified_date_time

    # Textual description of the late fee rule applied to delinquent or unpaid lease charges.
    attr_accessor :late_fee_rule

    # Lease Balance.
    attr_accessor :lease_balance

    # Lease Name.
    attr_accessor :lease_name

    # Building and/or units the lease is currently attached to.
    attr_accessor :location

    # Day that the tenant(s) moved into the property.
    attr_accessor :move_in_date

    # Day that the tenant(s) vacated the property.
    attr_accessor :move_out_date

    # Day that the tenant(s) turned in a notice to vacate.
    attr_accessor :notice_given_date

    # Indicates if the lease has any payment types that they are prevented from using. For example, a lease with several bounced checks may be restricted from paying with checks for future payments.
    attr_accessor :payment_restriction

    # Id of the portfolio associated with this lease.
    attr_accessor :portfolio_id

    # Indicates if the tenant(s) of the lease receive any aid from a Public Assistance Program.
    attr_accessor :public_assistance_program

    # Reason for vacating the property.
    attr_accessor :reason_for_leaving

    # Day that the tenant(s) are expected to vacate the property.
    attr_accessor :schedule_move_out_date

    # Search tag.
    attr_accessor :search_tag

    # Lease signed date.
    attr_accessor :signed_date

    # Start date of the lease term.
    attr_accessor :start_date

    # Lease's current status.
    attr_accessor :status

    # Indicates if the tenants opted into Asset Protection Plan.
    attr_accessor :tenants_opts_into_asset_protection_plan

    # Lease Terminated Date.
    attr_accessor :terminated_date

    # Id of the unit associated with this lease.
    attr_accessor :unit_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'addendums' => :'addendums',
        :'ar_balance' => :'arBalance',
        :'base_rent' => :'baseRent',
        :'building_id' => :'buildingID',
        :'comments' => :'comments',
        :'contacts' => :'contacts',
        :'created_by' => :'createdBy',
        :'created_date_time' => :'createdDateTime',
        :'custom_fields' => :'customFields',
        :'end_date' => :'endDate',
        :'id' => :'id',
        :'id_number' => :'idNumber',
        :'last_modified_by' => :'lastModifiedBy',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'late_fee_rule' => :'lateFeeRule',
        :'lease_balance' => :'leaseBalance',
        :'lease_name' => :'leaseName',
        :'location' => :'location',
        :'move_in_date' => :'moveInDate',
        :'move_out_date' => :'moveOutDate',
        :'notice_given_date' => :'noticeGivenDate',
        :'payment_restriction' => :'paymentRestriction',
        :'portfolio_id' => :'portfolioID',
        :'public_assistance_program' => :'publicAssistanceProgram',
        :'reason_for_leaving' => :'reasonForLeaving',
        :'schedule_move_out_date' => :'scheduleMoveOutDate',
        :'search_tag' => :'searchTag',
        :'signed_date' => :'signedDate',
        :'start_date' => :'startDate',
        :'status' => :'status',
        :'tenants_opts_into_asset_protection_plan' => :'tenantsOptsIntoAssetProtectionPlan',
        :'terminated_date' => :'terminatedDate',
        :'unit_id' => :'unitID'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'addendums' => :'Array<LeaseClause>',
        :'ar_balance' => :'Float',
        :'base_rent' => :'Float',
        :'building_id' => :'Integer',
        :'comments' => :'String',
        :'contacts' => :'Array<LeaseContact>',
        :'created_by' => :'String',
        :'created_date_time' => :'Time',
        :'custom_fields' => :'Array<CustomField>',
        :'end_date' => :'Date',
        :'id' => :'Integer',
        :'id_number' => :'Integer',
        :'last_modified_by' => :'String',
        :'last_modified_date_time' => :'Time',
        :'late_fee_rule' => :'String',
        :'lease_balance' => :'Float',
        :'lease_name' => :'String',
        :'location' => :'String',
        :'move_in_date' => :'Date',
        :'move_out_date' => :'Date',
        :'notice_given_date' => :'Date',
        :'payment_restriction' => :'String',
        :'portfolio_id' => :'Integer',
        :'public_assistance_program' => :'String',
        :'reason_for_leaving' => :'String',
        :'schedule_move_out_date' => :'Date',
        :'search_tag' => :'String',
        :'signed_date' => :'Date',
        :'start_date' => :'Date',
        :'status' => :'String',
        :'tenants_opts_into_asset_protection_plan' => :'String',
        :'terminated_date' => :'Date',
        :'unit_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::Lease` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::Lease`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'addendums')
        if (value = attributes[:'addendums']).is_a?(Array)
          self.addendums = value
        end
      end

      if attributes.key?(:'ar_balance')
        self.ar_balance = attributes[:'ar_balance']
      end

      if attributes.key?(:'base_rent')
        self.base_rent = attributes[:'base_rent']
      end

      if attributes.key?(:'building_id')
        self.building_id = attributes[:'building_id']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_date_time')
        self.created_date_time = attributes[:'created_date_time']
      end

      if attributes.key?(:'custom_fields')
        if (value = attributes[:'custom_fields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'id_number')
        self.id_number = attributes[:'id_number']
      end

      if attributes.key?(:'last_modified_by')
        self.last_modified_by = attributes[:'last_modified_by']
      end

      if attributes.key?(:'last_modified_date_time')
        self.last_modified_date_time = attributes[:'last_modified_date_time']
      end

      if attributes.key?(:'late_fee_rule')
        self.late_fee_rule = attributes[:'late_fee_rule']
      end

      if attributes.key?(:'lease_balance')
        self.lease_balance = attributes[:'lease_balance']
      end

      if attributes.key?(:'lease_name')
        self.lease_name = attributes[:'lease_name']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'move_in_date')
        self.move_in_date = attributes[:'move_in_date']
      end

      if attributes.key?(:'move_out_date')
        self.move_out_date = attributes[:'move_out_date']
      end

      if attributes.key?(:'notice_given_date')
        self.notice_given_date = attributes[:'notice_given_date']
      end

      if attributes.key?(:'payment_restriction')
        self.payment_restriction = attributes[:'payment_restriction']
      end

      if attributes.key?(:'portfolio_id')
        self.portfolio_id = attributes[:'portfolio_id']
      end

      if attributes.key?(:'public_assistance_program')
        self.public_assistance_program = attributes[:'public_assistance_program']
      end

      if attributes.key?(:'reason_for_leaving')
        self.reason_for_leaving = attributes[:'reason_for_leaving']
      end

      if attributes.key?(:'schedule_move_out_date')
        self.schedule_move_out_date = attributes[:'schedule_move_out_date']
      end

      if attributes.key?(:'search_tag')
        self.search_tag = attributes[:'search_tag']
      end

      if attributes.key?(:'signed_date')
        self.signed_date = attributes[:'signed_date']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tenants_opts_into_asset_protection_plan')
        self.tenants_opts_into_asset_protection_plan = attributes[:'tenants_opts_into_asset_protection_plan']
      end

      if attributes.key?(:'terminated_date')
        self.terminated_date = attributes[:'terminated_date']
      end

      if attributes.key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
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
          active == o.active &&
          addendums == o.addendums &&
          ar_balance == o.ar_balance &&
          base_rent == o.base_rent &&
          building_id == o.building_id &&
          comments == o.comments &&
          contacts == o.contacts &&
          created_by == o.created_by &&
          created_date_time == o.created_date_time &&
          custom_fields == o.custom_fields &&
          end_date == o.end_date &&
          id == o.id &&
          id_number == o.id_number &&
          last_modified_by == o.last_modified_by &&
          last_modified_date_time == o.last_modified_date_time &&
          late_fee_rule == o.late_fee_rule &&
          lease_balance == o.lease_balance &&
          lease_name == o.lease_name &&
          location == o.location &&
          move_in_date == o.move_in_date &&
          move_out_date == o.move_out_date &&
          notice_given_date == o.notice_given_date &&
          payment_restriction == o.payment_restriction &&
          portfolio_id == o.portfolio_id &&
          public_assistance_program == o.public_assistance_program &&
          reason_for_leaving == o.reason_for_leaving &&
          schedule_move_out_date == o.schedule_move_out_date &&
          search_tag == o.search_tag &&
          signed_date == o.signed_date &&
          start_date == o.start_date &&
          status == o.status &&
          tenants_opts_into_asset_protection_plan == o.tenants_opts_into_asset_protection_plan &&
          terminated_date == o.terminated_date &&
          unit_id == o.unit_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, addendums, ar_balance, base_rent, building_id, comments, contacts, created_by, created_date_time, custom_fields, end_date, id, id_number, last_modified_by, last_modified_date_time, late_fee_rule, lease_balance, lease_name, location, move_in_date, move_out_date, notice_given_date, payment_restriction, portfolio_id, public_assistance_program, reason_for_leaving, schedule_move_out_date, search_tag, signed_date, start_date, status, tenants_opts_into_asset_protection_plan, terminated_date, unit_id].hash
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
