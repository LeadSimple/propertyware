# Propertyware::UnitsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_unit**](UnitsApi.md#create_unit) | **POST** /units | Create a unit |
| [**create_units**](UnitsApi.md#create_units) | **POST** /units/bulk | Create units in bulk |
| [**delete_unit**](UnitsApi.md#delete_unit) | **DELETE** /units/{unitID} | Delete a unit (BETA) |
| [**delete_unit_conversation**](UnitsApi.md#delete_unit_conversation) | **DELETE** /units/{unitID}/conversations/{conversationID} | Delete a unit conversation (BETA) |
| [**get_lease_custom_fields_using_get1**](UnitsApi.md#get_lease_custom_fields_using_get1) | **GET** /units/{unitID}/customFields | Retrieve all unit custom fields |
| [**get_unit**](UnitsApi.md#get_unit) | **GET** /units/{unitID} | Retrieve a unit |
| [**get_unit_conversation**](UnitsApi.md#get_unit_conversation) | **GET** /units/{unitID}/conversations/{conversationID} | Retrieve a unit conversation |
| [**get_unit_conversations**](UnitsApi.md#get_unit_conversations) | **GET** /units/{unitID}/conversations | Retrieve all unit conversations |
| [**get_units**](UnitsApi.md#get_units) | **GET** /units | Retrieve all units |
| [**update_unit**](UnitsApi.md#update_unit) | **PUT** /units/customfields | Update a unit custom fields (BETA) |
| [**update_unit_using_put1**](UnitsApi.md#update_unit_using_put1) | **PUT** /units/{unitID} | Update a unit |


## create_unit

> <Unit> create_unit(save_unit)

Create a unit

Creates a unit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Write</code> 

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

api_instance = Propertyware::UnitsApi.new
save_unit = Propertyware::SaveUnit.new({abbreviation: 'abbreviation_example', building_id: 3.56, category: 'RESIDENTIAL', name: 'name_example', portfolio_id: 3.56, type: 'type_example'}) # SaveUnit | saveUnit

begin
  # Create a unit
  result = api_instance.create_unit(save_unit)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->create_unit: #{e}"
end
```

#### Using the create_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Unit>, Integer, Hash)> create_unit_with_http_info(save_unit)

```ruby
begin
  # Create a unit
  data, status_code, headers = api_instance.create_unit_with_http_info(save_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Unit>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->create_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_unit** | [**SaveUnit**](SaveUnit.md) | saveUnit |  |

### Return type

[**Unit**](Unit.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_units

> <Array<RESTAPIBulkSuccessResponse>> create_units(save_unit)

Create units in bulk

Creates units in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Write</code> 

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

api_instance = Propertyware::UnitsApi.new
save_unit = [Propertyware::SaveUnit.new({abbreviation: 'abbreviation_example', building_id: 3.56, category: 'RESIDENTIAL', name: 'name_example', portfolio_id: 3.56, type: 'type_example'})] # Array<SaveUnit> | saveUnit

begin
  # Create units in bulk
  result = api_instance.create_units(save_unit)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->create_units: #{e}"
end
```

#### Using the create_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_units_with_http_info(save_unit)

```ruby
begin
  # Create units in bulk
  data, status_code, headers = api_instance.create_units_with_http_info(save_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->create_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_unit** | [**Array&lt;SaveUnit&gt;**](SaveUnit.md) | saveUnit |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_unit

> <ResponseEntity> delete_unit(unit_id)

Delete a unit (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific unit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Delete</code> 

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID

begin
  # Delete a unit (BETA)
  result = api_instance.delete_unit(unit_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->delete_unit: #{e}"
end
```

#### Using the delete_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_unit_with_http_info(unit_id)

```ruby
begin
  # Delete a unit (BETA)
  data, status_code, headers = api_instance.delete_unit_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->delete_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_unit_conversation

> <ResponseEntity> delete_unit_conversation(unit_id, conversation_id)

Delete a unit conversation (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific unit conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Delete</code> 

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Delete a unit conversation (BETA)
  result = api_instance.delete_unit_conversation(unit_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->delete_unit_conversation: #{e}"
end
```

#### Using the delete_unit_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_unit_conversation_with_http_info(unit_id, conversation_id)

```ruby
begin
  # Delete a unit conversation (BETA)
  data, status_code, headers = api_instance.delete_unit_conversation_with_http_info(unit_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->delete_unit_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_custom_fields_using_get1

> <Array<Unit>> get_lease_custom_fields_using_get1(unit_id)

Retrieve all unit custom fields

Retrieves all the custom fields of a unit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Read</code> 

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID

begin
  # Retrieve all unit custom fields
  result = api_instance.get_lease_custom_fields_using_get1(unit_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_lease_custom_fields_using_get1: #{e}"
end
```

#### Using the get_lease_custom_fields_using_get1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Unit>>, Integer, Hash)> get_lease_custom_fields_using_get1_with_http_info(unit_id)

```ruby
begin
  # Retrieve all unit custom fields
  data, status_code, headers = api_instance.get_lease_custom_fields_using_get1_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Unit>>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_lease_custom_fields_using_get1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |

### Return type

[**Array&lt;Unit&gt;**](Unit.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unit

> <Unit> get_unit(unit_id, opts)

Retrieve a unit

Retrieves a specific unit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Read</code> 

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve a unit
  result = api_instance.get_unit(unit_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_unit: #{e}"
end
```

#### Using the get_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Unit>, Integer, Hash)> get_unit_with_http_info(unit_id, opts)

```ruby
begin
  # Retrieve a unit
  data, status_code, headers = api_instance.get_unit_with_http_info(unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Unit>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |

### Return type

[**Unit**](Unit.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unit_conversation

> <Conversation> get_unit_conversation(unit_id, conversation_id)

Retrieve a unit conversation

Retrieves a specific unit conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Read</code> 

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Retrieve a unit conversation
  result = api_instance.get_unit_conversation(unit_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_unit_conversation: #{e}"
end
```

#### Using the get_unit_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> get_unit_conversation_with_http_info(unit_id, conversation_id)

```ruby
begin
  # Retrieve a unit conversation
  data, status_code, headers = api_instance.get_unit_conversation_with_http_info(unit_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_unit_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unit_conversations

> <Array<Conversation>> get_unit_conversations(unit_id, opts)

Retrieve all unit conversations

Retrieves all the conversations of a unit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  type: 'MANAGEMENT_TEAM' # String | Filters results by the conversation type.
}

begin
  # Retrieve all unit conversations
  result = api_instance.get_unit_conversations(unit_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_unit_conversations: #{e}"
end
```

#### Using the get_unit_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Conversation>>, Integer, Hash)> get_unit_conversations_with_http_info(unit_id, opts)

```ruby
begin
  # Retrieve all unit conversations
  data, status_code, headers = api_instance.get_unit_conversations_with_http_info(unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Conversation>>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_unit_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. | [optional][default to 100] |
| **last_modified_date_time_start** | **Time** | Filters results to any item modified on or after the date time specified.  | [optional] |
| **last_modified_date_time_end** | **Time** | Filters results to any item modified on or prior to the date time specified.  | [optional] |
| **orderby** | **String** | Indicates the field(s) and direction to sort the results in the response. | [optional] |
| **type** | **String** | Filters results by the conversation type. | [optional] |

### Return type

[**Array&lt;Conversation&gt;**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_units

> <Array<Unit>> get_units(opts)

Retrieve all units

Retrieves a list of units.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>idnumber</code>, <code>name</code>, <code>abbreviation</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::UnitsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  vacant: true, # Boolean | Filters results by the unit's vacancy status. If no value is specified, units with any status will be returned.
  published_for_rent: true, # Boolean | Filters results by the unit's \"published for rent\" status. If no value is specified, units with any status will be returned.
  portfolio_id: 789, # Integer | Filters results to units associated with a specific portfolio.
  building_id: 789, # Integer | Filters results to units associated with a specific building.
  type: 'type_example', # String | Filters results to units with a specific type.
  include_deactivated: true, # Boolean | Include inactive units in the results.
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve all units
  result = api_instance.get_units(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_units: #{e}"
end
```

#### Using the get_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Unit>>, Integer, Hash)> get_units_with_http_info(opts)

```ruby
begin
  # Retrieve all units
  data, status_code, headers = api_instance.get_units_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Unit>>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->get_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. | [optional][default to 100] |
| **last_modified_date_time_start** | **Time** | Filters results to any item modified on or after the date time specified.  | [optional] |
| **last_modified_date_time_end** | **Time** | Filters results to any item modified on or prior to the date time specified.  | [optional] |
| **orderby** | **String** | Indicates the field(s) and direction to sort the results in the response. | [optional] |
| **vacant** | **Boolean** | Filters results by the unit&#39;s vacancy status. If no value is specified, units with any status will be returned. | [optional] |
| **published_for_rent** | **Boolean** | Filters results by the unit&#39;s \&quot;published for rent\&quot; status. If no value is specified, units with any status will be returned. | [optional] |
| **portfolio_id** | **Integer** | Filters results to units associated with a specific portfolio. | [optional] |
| **building_id** | **Integer** | Filters results to units associated with a specific building. | [optional] |
| **type** | **String** | Filters results to units with a specific type. | [optional] |
| **include_deactivated** | **Boolean** | Include inactive units in the results. | [optional] |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |

### Return type

[**Array&lt;Unit&gt;**](Unit.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_unit

> <ResponseEntity> update_unit(save_custom_field)

Update a unit custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing unit custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Write</code> 

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

api_instance = Propertyware::UnitsApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a unit custom fields (BETA)
  result = api_instance.update_unit(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->update_unit: #{e}"
end
```

#### Using the update_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_unit_with_http_info(save_custom_field)

```ruby
begin
  # Update a unit custom fields (BETA)
  data, status_code, headers = api_instance.update_unit_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->update_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_custom_field** | [**SaveCustomField**](SaveCustomField.md) | saveCustomField |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_unit_using_put1

> <Unit> update_unit_using_put1(unit_id, save_unit)

Update a unit

Update as unit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Write</code> 

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

api_instance = Propertyware::UnitsApi.new
unit_id = 789 # Integer | Unit ID
save_unit = Propertyware::SaveUnit.new({abbreviation: 'abbreviation_example', building_id: 3.56, category: 'RESIDENTIAL', name: 'name_example', portfolio_id: 3.56, type: 'type_example'}) # SaveUnit | saveUnit

begin
  # Update a unit
  result = api_instance.update_unit_using_put1(unit_id, save_unit)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->update_unit_using_put1: #{e}"
end
```

#### Using the update_unit_using_put1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Unit>, Integer, Hash)> update_unit_using_put1_with_http_info(unit_id, save_unit)

```ruby
begin
  # Update a unit
  data, status_code, headers = api_instance.update_unit_using_put1_with_http_info(unit_id, save_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Unit>
rescue Propertyware::ApiError => e
  puts "Error when calling UnitsApi->update_unit_using_put1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Unit ID |  |
| **save_unit** | [**SaveUnit**](SaveUnit.md) | saveUnit |  |

### Return type

[**Unit**](Unit.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

