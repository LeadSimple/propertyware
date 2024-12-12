# Propertyware::BuildingsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_building**](BuildingsApi.md#create_building) | **POST** /buildings | Create a building |
| [**create_contacts**](BuildingsApi.md#create_contacts) | **POST** /buildings/bulk | Create buildings in bulk |
| [**delete_building**](BuildingsApi.md#delete_building) | **DELETE** /buildings/{buildingID} | Delete a building (BETA) |
| [**delete_building_conversation**](BuildingsApi.md#delete_building_conversation) | **DELETE** /buildings/{buildingID}/conversations/{conversationID} | Delete a building conversation (BETA) |
| [**get_building**](BuildingsApi.md#get_building) | **GET** /buildings/{buildingID} | Retrieve a building |
| [**get_building_conversation**](BuildingsApi.md#get_building_conversation) | **GET** /buildings/{buildingID}/conversations/{conversationID} | Retrieve a building conversation |
| [**get_building_conversations**](BuildingsApi.md#get_building_conversations) | **GET** /buildings/{buildingID}/conversations | Retrieve all building conversations |
| [**get_building_management_fee**](BuildingsApi.md#get_building_management_fee) | **GET** /buildings/{buildingID}/managementfees | Retrieves all the management fee rules of a building. (BETA) |
| [**get_building_managers**](BuildingsApi.md#get_building_managers) | **GET** /buildings/{buildingID}/managers | Retrieves all the property managers of a building |
| [**get_building_notes**](BuildingsApi.md#get_building_notes) | **GET** /buildings/{buildingID}/notes | Retrieves all the notes of a building. |
| [**get_buildings**](BuildingsApi.md#get_buildings) | **GET** /buildings | Retrieve all buildings |
| [**update_building**](BuildingsApi.md#update_building) | **PUT** /buildings/customfields | Update a building custom fields (BETA) |
| [**update_building_using_put1**](BuildingsApi.md#update_building_using_put1) | **PUT** /buildings/{buildingID} | Update a building |


## create_building

> <Building> create_building(save_building)

Create a building

Creates a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Write</code> 

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

api_instance = Propertyware::BuildingsApi.new
save_building = Propertyware::SaveBuilding.new({abbreviation: 'abbreviation_example', category: 'RESIDENTIAL', count_unit: 37, name: 'name_example', portfolio_id: 3.56, property_type: 'NONE', rentable: false, type: 'type_example'}) # SaveBuilding | saveBuilding

begin
  # Create a building
  result = api_instance.create_building(save_building)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->create_building: #{e}"
end
```

#### Using the create_building_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Building>, Integer, Hash)> create_building_with_http_info(save_building)

```ruby
begin
  # Create a building
  data, status_code, headers = api_instance.create_building_with_http_info(save_building)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Building>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->create_building_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_building** | [**SaveBuilding**](SaveBuilding.md) | saveBuilding |  |

### Return type

[**Building**](Building.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_contacts

> <Array<RESTAPIBulkSuccessResponse>> create_contacts(save_building)

Create buildings in bulk

Creates buildings in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Write</code> 

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

api_instance = Propertyware::BuildingsApi.new
save_building = [Propertyware::SaveBuilding.new({abbreviation: 'abbreviation_example', category: 'RESIDENTIAL', count_unit: 37, name: 'name_example', portfolio_id: 3.56, property_type: 'NONE', rentable: false, type: 'type_example'})] # Array<SaveBuilding> | saveBuilding

begin
  # Create buildings in bulk
  result = api_instance.create_contacts(save_building)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->create_contacts: #{e}"
end
```

#### Using the create_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_contacts_with_http_info(save_building)

```ruby
begin
  # Create buildings in bulk
  data, status_code, headers = api_instance.create_contacts_with_http_info(save_building)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->create_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_building** | [**Array&lt;SaveBuilding&gt;**](SaveBuilding.md) | saveBuilding |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_building

> <ResponseEntity> delete_building(building_id)

Delete a building (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Delete a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Delete</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID

begin
  # Delete a building (BETA)
  result = api_instance.delete_building(building_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->delete_building: #{e}"
end
```

#### Using the delete_building_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_building_with_http_info(building_id)

```ruby
begin
  # Delete a building (BETA)
  data, status_code, headers = api_instance.delete_building_with_http_info(building_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->delete_building_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_building_conversation

> <ResponseEntity> delete_building_conversation(building_id, conversation_id)

Delete a building conversation (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific building conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Delete</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Delete a building conversation (BETA)
  result = api_instance.delete_building_conversation(building_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->delete_building_conversation: #{e}"
end
```

#### Using the delete_building_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_building_conversation_with_http_info(building_id, conversation_id)

```ruby
begin
  # Delete a building conversation (BETA)
  data, status_code, headers = api_instance.delete_building_conversation_with_http_info(building_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->delete_building_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_building

> <Building> get_building(building_id, opts)

Retrieve a building

Retrieves a specific building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID
opts = {
  include_custom_fields: true # Boolean | Include custom fields in the response.
}

begin
  # Retrieve a building
  result = api_instance.get_building(building_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building: #{e}"
end
```

#### Using the get_building_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Building>, Integer, Hash)> get_building_with_http_info(building_id, opts)

```ruby
begin
  # Retrieve a building
  data, status_code, headers = api_instance.get_building_with_http_info(building_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Building>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |
| **include_custom_fields** | **Boolean** | Include custom fields in the response. | [optional][default to true] |

### Return type

[**Building**](Building.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_building_conversation

> <Conversation> get_building_conversation(building_id, conversation_id)

Retrieve a building conversation

Retrieves a specific building conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Retrieve a building conversation
  result = api_instance.get_building_conversation(building_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_conversation: #{e}"
end
```

#### Using the get_building_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> get_building_conversation_with_http_info(building_id, conversation_id)

```ruby
begin
  # Retrieve a building conversation
  data, status_code, headers = api_instance.get_building_conversation_with_http_info(building_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_building_conversations

> <Array<Conversation>> get_building_conversations(building_id, opts)

Retrieve all building conversations

Retrieves all the conversations of a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  type: 'MANAGEMENT_TEAM' # String | Filters results by the conversation type.
}

begin
  # Retrieve all building conversations
  result = api_instance.get_building_conversations(building_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_conversations: #{e}"
end
```

#### Using the get_building_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Conversation>>, Integer, Hash)> get_building_conversations_with_http_info(building_id, opts)

```ruby
begin
  # Retrieve all building conversations
  data, status_code, headers = api_instance.get_building_conversations_with_http_info(building_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Conversation>>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |
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


## get_building_management_fee

> <Array<ManagementFee>> get_building_management_fee(building_id)

Retrieves all the management fee rules of a building. (BETA)

<p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves all the management fee rules of a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID

begin
  # Retrieves all the management fee rules of a building. (BETA)
  result = api_instance.get_building_management_fee(building_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_management_fee: #{e}"
end
```

#### Using the get_building_management_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ManagementFee>>, Integer, Hash)> get_building_management_fee_with_http_info(building_id)

```ruby
begin
  # Retrieves all the management fee rules of a building. (BETA)
  data, status_code, headers = api_instance.get_building_management_fee_with_http_info(building_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ManagementFee>>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_management_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |

### Return type

[**Array&lt;ManagementFee&gt;**](ManagementFee.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_building_managers

> <Array<PropertyManager>> get_building_managers(building_id)

Retrieves all the property managers of a building

Retrieves all the property managers of a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID

begin
  # Retrieves all the property managers of a building
  result = api_instance.get_building_managers(building_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_managers: #{e}"
end
```

#### Using the get_building_managers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PropertyManager>>, Integer, Hash)> get_building_managers_with_http_info(building_id)

```ruby
begin
  # Retrieves all the property managers of a building
  data, status_code, headers = api_instance.get_building_managers_with_http_info(building_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PropertyManager>>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_managers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |

### Return type

[**Array&lt;PropertyManager&gt;**](PropertyManager.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_building_notes

> <Array<Note>> get_building_notes(building_id)

Retrieves all the notes of a building.

Retrieves all the notes of a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID

begin
  # Retrieves all the notes of a building.
  result = api_instance.get_building_notes(building_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_notes: #{e}"
end
```

#### Using the get_building_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Note>>, Integer, Hash)> get_building_notes_with_http_info(building_id)

```ruby
begin
  # Retrieves all the notes of a building.
  data, status_code, headers = api_instance.get_building_notes_with_http_info(building_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Note>>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_building_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |

### Return type

[**Array&lt;Note&gt;**](Note.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_buildings

> <Array<Building>> get_buildings(opts)

Retrieve all buildings

Retrieves a list of buildings.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>idnumber</code>, <code>name</code>, <code>abbreviation</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::BuildingsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  vacant: true, # Boolean | Filters results by the building's vacancy status. If no value is specified, buildings with any status will be returned.
  published_for_rent: true, # Boolean | Filters results by the building's \"published for rent\" status. If no value is specified, buildings with any status will be returned.
  lease_id: 789, # Integer | Filters results to buildings associated with a specific lease.
  portfolio_id: 789, # Integer | Filters results to buildings associated with a specific portfolio.
  include_deactivated: true, # Boolean | Filters results to buildings with a deactivated records.
  include_custom_fields: true # Boolean | Include custom fields in the response.
}

begin
  # Retrieve all buildings
  result = api_instance.get_buildings(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_buildings: #{e}"
end
```

#### Using the get_buildings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Building>>, Integer, Hash)> get_buildings_with_http_info(opts)

```ruby
begin
  # Retrieve all buildings
  data, status_code, headers = api_instance.get_buildings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Building>>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->get_buildings_with_http_info: #{e}"
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
| **vacant** | **Boolean** | Filters results by the building&#39;s vacancy status. If no value is specified, buildings with any status will be returned. | [optional] |
| **published_for_rent** | **Boolean** | Filters results by the building&#39;s \&quot;published for rent\&quot; status. If no value is specified, buildings with any status will be returned. | [optional] |
| **lease_id** | **Integer** | Filters results to buildings associated with a specific lease. | [optional] |
| **portfolio_id** | **Integer** | Filters results to buildings associated with a specific portfolio. | [optional] |
| **include_deactivated** | **Boolean** | Filters results to buildings with a deactivated records. | [optional] |
| **include_custom_fields** | **Boolean** | Include custom fields in the response. | [optional][default to false] |

### Return type

[**Array&lt;Building&gt;**](Building.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_building

> <ResponseEntity> update_building(save_custom_field)

Update a building custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing building custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Write</code> 

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

api_instance = Propertyware::BuildingsApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a building custom fields (BETA)
  result = api_instance.update_building(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->update_building: #{e}"
end
```

#### Using the update_building_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_building_with_http_info(save_custom_field)

```ruby
begin
  # Update a building custom fields (BETA)
  data, status_code, headers = api_instance.update_building_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->update_building_with_http_info: #{e}"
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


## update_building_using_put1

> <Building> update_building_using_put1(building_id, update_building)

Update a building

Updates a building.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BUILDINGS</span> - <code>Write</code> 

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

api_instance = Propertyware::BuildingsApi.new
building_id = 789 # Integer | Building ID
update_building = Propertyware::UpdateBuilding.new({abbreviation: 'abbreviation_example', count_unit: 37, name: 'name_example', property_type: 'NONE', rentable: false, type: 'type_example'}) # UpdateBuilding | updateBuilding

begin
  # Update a building
  result = api_instance.update_building_using_put1(building_id, update_building)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->update_building_using_put1: #{e}"
end
```

#### Using the update_building_using_put1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Building>, Integer, Hash)> update_building_using_put1_with_http_info(building_id, update_building)

```ruby
begin
  # Update a building
  data, status_code, headers = api_instance.update_building_using_put1_with_http_info(building_id, update_building)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Building>
rescue Propertyware::ApiError => e
  puts "Error when calling BuildingsApi->update_building_using_put1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Building ID |  |
| **update_building** | [**UpdateBuilding**](UpdateBuilding.md) | updateBuilding |  |

### Return type

[**Building**](Building.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

