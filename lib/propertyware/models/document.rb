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
  class Document
    # User who created the record.
    attr_accessor :created_by

    # Date and time the record was created. (Timezone: UTC)
    attr_accessor :created_date_time

    # Description of a document.
    attr_accessor :description

    # Unique identifier of an entity document is attached to.
    attr_accessor :entity_id

    # Type of an entity document is attached to.
    attr_accessor :entity_type

    # File name.
    attr_accessor :file_name

    # File type.
    attr_accessor :file_type

    # Unique identifier.
    attr_accessor :id

    # User who last modified the record.
    attr_accessor :last_modified_by

    # Date and time the record was last modified. (Timezone: UTC)
    attr_accessor :last_modified_date_time

    # Indicates if the document is published to the owner portal.
    attr_accessor :publish_to_owner_portal

    # Indicates if the document is published to the tenant portal.
    attr_accessor :publish_to_tenant_portal

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
        :'created_by' => :'createdBy',
        :'created_date_time' => :'createdDateTime',
        :'description' => :'description',
        :'entity_id' => :'entityId',
        :'entity_type' => :'entityType',
        :'file_name' => :'fileName',
        :'file_type' => :'fileType',
        :'id' => :'id',
        :'last_modified_by' => :'lastModifiedBy',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'publish_to_owner_portal' => :'publishToOwnerPortal',
        :'publish_to_tenant_portal' => :'publishToTenantPortal'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_by' => :'String',
        :'created_date_time' => :'Time',
        :'description' => :'String',
        :'entity_id' => :'Integer',
        :'entity_type' => :'String',
        :'file_name' => :'String',
        :'file_type' => :'String',
        :'id' => :'Integer',
        :'last_modified_by' => :'String',
        :'last_modified_date_time' => :'Time',
        :'publish_to_owner_portal' => :'Boolean',
        :'publish_to_tenant_portal' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::Document` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::Document`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_date_time')
        self.created_date_time = attributes[:'created_date_time']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'entity_type')
        self.entity_type = attributes[:'entity_type']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'file_type')
        self.file_type = attributes[:'file_type']
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

      if attributes.key?(:'publish_to_owner_portal')
        self.publish_to_owner_portal = attributes[:'publish_to_owner_portal']
      end

      if attributes.key?(:'publish_to_tenant_portal')
        self.publish_to_tenant_portal = attributes[:'publish_to_tenant_portal']
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
      entity_type_validator = EnumAttributeValidator.new('String', ["APPOINTMENT", "ASSET", "BILL", "BANK_DEPOSIT", "BILL_PAYMENT", "BUILDING", "CONTACT", "FLOOR_PLAN", "DESKTOP", "EMAIL_TEMPLATE", "INSPECTION", "LEASE", "OTHER", "PORTFOLIO", "PROSPECT", "RECONCILIATION", "TASK", "TRANSACTION", "UNIT", "VENDOR", "WORK_ORDER"])
      return false unless entity_type_validator.valid?(@entity_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_type Object to be assigned
    def entity_type=(entity_type)
      validator = EnumAttributeValidator.new('String', ["APPOINTMENT", "ASSET", "BILL", "BANK_DEPOSIT", "BILL_PAYMENT", "BUILDING", "CONTACT", "FLOOR_PLAN", "DESKTOP", "EMAIL_TEMPLATE", "INSPECTION", "LEASE", "OTHER", "PORTFOLIO", "PROSPECT", "RECONCILIATION", "TASK", "TRANSACTION", "UNIT", "VENDOR", "WORK_ORDER"])
      unless validator.valid?(entity_type)
        fail ArgumentError, "invalid value #{ entity_type.inspect } for \"entity_type\", must be one of #{validator.allowable_values}."
      end
      @entity_type = entity_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_by == o.created_by &&
          created_date_time == o.created_date_time &&
          description == o.description &&
          entity_id == o.entity_id &&
          entity_type == o.entity_type &&
          file_name == o.file_name &&
          file_type == o.file_type &&
          id == o.id &&
          last_modified_by == o.last_modified_by &&
          last_modified_date_time == o.last_modified_date_time &&
          publish_to_owner_portal == o.publish_to_owner_portal &&
          publish_to_tenant_portal == o.publish_to_tenant_portal
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_by, created_date_time, description, entity_id, entity_type, file_name, file_type, id, last_modified_by, last_modified_date_time, publish_to_owner_portal, publish_to_tenant_portal].hash
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
