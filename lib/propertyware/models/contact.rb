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
  # Contact Response
  class Contact
    attr_accessor :address

    # Indicates if the contact can receive eSignature request e-mail messages sent through Propertyware.
    attr_accessor :allow_e_signature

    # Alternate e-mail address.
    attr_accessor :alt_email

    # Date of birth.
    attr_accessor :birth_date

    # Contact category.
    attr_accessor :category

    # Comments.
    attr_accessor :comments

    # Company where the contact is employed.
    attr_accessor :company

    # User who created the record.
    attr_accessor :created_by

    # Date and time the record was created. (Timezone: UTC)
    attr_accessor :created_date_time

    # Custom fields.
    attr_accessor :custom_fields

    # E-mail address.
    attr_accessor :email

    # Fax.
    attr_accessor :fax

    # First name.
    attr_accessor :first_name

    # Gender.
    attr_accessor :gender

    # Home phone.
    attr_accessor :home_phone

    # Unique identifier.
    attr_accessor :id

    # Professional title or position for the contact.
    attr_accessor :job_title

    # User who last modified the record.
    attr_accessor :last_modified_by

    # Date and time the record was last modified. (Timezone: UTC)
    attr_accessor :last_modified_date_time

    # Last name.
    attr_accessor :last_name

    # Middle name.
    attr_accessor :middle_name

    # Mobile phone.
    attr_accessor :mobile_phone

    # Name on check.
    attr_accessor :name_on_check

    # Indicates if contact is named on lease.
    attr_accessor :named_on_lease

    # Other phone.
    attr_accessor :other_phone

    # Salutation.
    attr_accessor :salutation

    # Suffix.
    attr_accessor :suffix

    # Contact type.
    attr_accessor :type

    # Work phone.
    attr_accessor :work_phone

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
        :'address' => :'address',
        :'allow_e_signature' => :'allowESignature',
        :'alt_email' => :'altEmail',
        :'birth_date' => :'birthDate',
        :'category' => :'category',
        :'comments' => :'comments',
        :'company' => :'company',
        :'created_by' => :'createdBy',
        :'created_date_time' => :'createdDateTime',
        :'custom_fields' => :'customFields',
        :'email' => :'email',
        :'fax' => :'fax',
        :'first_name' => :'firstName',
        :'gender' => :'gender',
        :'home_phone' => :'homePhone',
        :'id' => :'id',
        :'job_title' => :'jobTitle',
        :'last_modified_by' => :'lastModifiedBy',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'last_name' => :'lastName',
        :'middle_name' => :'middleName',
        :'mobile_phone' => :'mobilePhone',
        :'name_on_check' => :'nameOnCheck',
        :'named_on_lease' => :'namedOnLease',
        :'other_phone' => :'otherPhone',
        :'salutation' => :'salutation',
        :'suffix' => :'suffix',
        :'type' => :'type',
        :'work_phone' => :'workPhone'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address' => :'Address',
        :'allow_e_signature' => :'Boolean',
        :'alt_email' => :'String',
        :'birth_date' => :'Date',
        :'category' => :'String',
        :'comments' => :'String',
        :'company' => :'String',
        :'created_by' => :'String',
        :'created_date_time' => :'Time',
        :'custom_fields' => :'Array<CustomField>',
        :'email' => :'String',
        :'fax' => :'String',
        :'first_name' => :'String',
        :'gender' => :'String',
        :'home_phone' => :'String',
        :'id' => :'Integer',
        :'job_title' => :'String',
        :'last_modified_by' => :'String',
        :'last_modified_date_time' => :'Time',
        :'last_name' => :'String',
        :'middle_name' => :'String',
        :'mobile_phone' => :'String',
        :'name_on_check' => :'String',
        :'named_on_lease' => :'Boolean',
        :'other_phone' => :'String',
        :'salutation' => :'String',
        :'suffix' => :'String',
        :'type' => :'String',
        :'work_phone' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::Contact` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::Contact`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'allow_e_signature')
        self.allow_e_signature = attributes[:'allow_e_signature']
      end

      if attributes.key?(:'alt_email')
        self.alt_email = attributes[:'alt_email']
      end

      if attributes.key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
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

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'home_phone')
        self.home_phone = attributes[:'home_phone']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'job_title')
        self.job_title = attributes[:'job_title']
      end

      if attributes.key?(:'last_modified_by')
        self.last_modified_by = attributes[:'last_modified_by']
      end

      if attributes.key?(:'last_modified_date_time')
        self.last_modified_date_time = attributes[:'last_modified_date_time']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'mobile_phone')
        self.mobile_phone = attributes[:'mobile_phone']
      end

      if attributes.key?(:'name_on_check')
        self.name_on_check = attributes[:'name_on_check']
      end

      if attributes.key?(:'named_on_lease')
        self.named_on_lease = attributes[:'named_on_lease']
      end

      if attributes.key?(:'other_phone')
        self.other_phone = attributes[:'other_phone']
      end

      if attributes.key?(:'salutation')
        self.salutation = attributes[:'salutation']
      end

      if attributes.key?(:'suffix')
        self.suffix = attributes[:'suffix']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'work_phone')
        self.work_phone = attributes[:'work_phone']
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
      gender_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "MALE", "FEMALE", "DECLINE_TO_STATE"])
      return false unless gender_validator.valid?(@gender)
      type_validator = EnumAttributeValidator.new('String', ["TENANT", "PROSPECT", "OWNER", "VENDOR", "OTHER"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "MALE", "FEMALE", "DECLINE_TO_STATE"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value #{ gender.inspect } for \"gender\", must be one of #{validator.allowable_values}."
      end
      @gender = gender
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["TENANT", "PROSPECT", "OWNER", "VENDOR", "OTHER"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value #{ type.inspect } for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          allow_e_signature == o.allow_e_signature &&
          alt_email == o.alt_email &&
          birth_date == o.birth_date &&
          category == o.category &&
          comments == o.comments &&
          company == o.company &&
          created_by == o.created_by &&
          created_date_time == o.created_date_time &&
          custom_fields == o.custom_fields &&
          email == o.email &&
          fax == o.fax &&
          first_name == o.first_name &&
          gender == o.gender &&
          home_phone == o.home_phone &&
          id == o.id &&
          job_title == o.job_title &&
          last_modified_by == o.last_modified_by &&
          last_modified_date_time == o.last_modified_date_time &&
          last_name == o.last_name &&
          middle_name == o.middle_name &&
          mobile_phone == o.mobile_phone &&
          name_on_check == o.name_on_check &&
          named_on_lease == o.named_on_lease &&
          other_phone == o.other_phone &&
          salutation == o.salutation &&
          suffix == o.suffix &&
          type == o.type &&
          work_phone == o.work_phone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address, allow_e_signature, alt_email, birth_date, category, comments, company, created_by, created_date_time, custom_fields, email, fax, first_name, gender, home_phone, id, job_title, last_modified_by, last_modified_date_time, last_name, middle_name, mobile_phone, name_on_check, named_on_lease, other_phone, salutation, suffix, type, work_phone].hash
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
