=begin
#Open API, powered by Propertyware


The version of the OpenAPI document: 1.0
Contact: support@propertyware.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Propertyware::ManagementSettings
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Propertyware::ManagementSettings do
  let(:instance) { Propertyware::ManagementSettings.new }

  describe 'test an instance of ManagementSettings' do
    it 'should create an instance of ManagementSettings' do
      expect(instance).to be_instance_of(Propertyware::ManagementSettings)
    end
  end
  describe 'test attribute "management_contract_end_date"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "management_contract_start_date"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "management_fee_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "management_fees"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "management_fees_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MANAGE_FEE_NONE", "MANAGE_FEE_GREATER_OF_FLAT_OR_PERCENTAGE", "MANAGE_FEE_FLAT_PLUS_PERCENTAGE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.management_fees_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "management_flat_fee"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
