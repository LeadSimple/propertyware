=begin
#Open API, powered by Propertyware


The version of the OpenAPI document: 1.0
Contact: support@propertyware.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Propertyware::HealthCheckApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HealthCheckApi' do
  before do
    # run before each test
    @api_instance = Propertyware::HealthCheckApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HealthCheckApi' do
    it 'should create an instance of HealthCheckApi' do
      expect(@api_instance).to be_instance_of(Propertyware::HealthCheckApi)
    end
  end

  # unit tests for health
  # Health check
  # Indicates whether the API is up and running correctly.&lt;br/&gt;&lt;br/&gt;
  # @param [Hash] opts the optional parameters
  # @return [ResponseEntity]
  describe 'health test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
