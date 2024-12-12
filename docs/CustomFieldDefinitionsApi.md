# Propertyware::CustomFieldDefinitionsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**retrieve_custom_field_definitions**](CustomFieldDefinitionsApi.md#retrieve_custom_field_definitions) | **GET** /customfields/{entityType}/definitions | Retrieve list of custom field definitions. |


## retrieve_custom_field_definitions

> <Array<CustomFieldDefinition>> retrieve_custom_field_definitions(entity_type)

Retrieve list of custom field definitions.

Retrieve list of custom field definitions.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">CUSTOM FIELD</span> - <code>Read</code> 

### Examples

```ruby
require 'time'
require 'propertyware'
# setup authorization
Propertyware.configure do |config|
  # Configure API key authorization: organizationId
  config.api_key['organizationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['organizationId'] = 'Bearer'

  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Propertyware::CustomFieldDefinitionsApi.new
entity_type = 'entity_type_example' # String | Entity type, allowed entity types (Asset, Building, Contact, Lease, Portfolio, Prospect, Unit, Vendor, WorkOrder, ServiceAgreement)

begin
  # Retrieve list of custom field definitions.
  result = api_instance.retrieve_custom_field_definitions(entity_type)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling CustomFieldDefinitionsApi->retrieve_custom_field_definitions: #{e}"
end
```

#### Using the retrieve_custom_field_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CustomFieldDefinition>>, Integer, Hash)> retrieve_custom_field_definitions_with_http_info(entity_type)

```ruby
begin
  # Retrieve list of custom field definitions.
  data, status_code, headers = api_instance.retrieve_custom_field_definitions_with_http_info(entity_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CustomFieldDefinition>>
rescue Propertyware::ApiError => e
  puts "Error when calling CustomFieldDefinitionsApi->retrieve_custom_field_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Entity type, allowed entity types (Asset, Building, Contact, Lease, Portfolio, Prospect, Unit, Vendor, WorkOrder, ServiceAgreement) |  |

### Return type

[**Array&lt;CustomFieldDefinition&gt;**](CustomFieldDefinition.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

