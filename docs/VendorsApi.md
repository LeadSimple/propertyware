# Propertyware::VendorsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vendor**](VendorsApi.md#create_vendor) | **POST** /vendors | Create a vendor |
| [**create_vendors**](VendorsApi.md#create_vendors) | **POST** /vendors/bulk | Create Vendors in bulk |
| [**get_vendor**](VendorsApi.md#get_vendor) | **GET** /vendors/{vendorID} | Retrieve a vendor |
| [**get_vendor_account**](VendorsApi.md#get_vendor_account) | **GET** /vendors/{vendorID}/account | Retrieve vendor GL account |
| [**get_vendor_conversation**](VendorsApi.md#get_vendor_conversation) | **GET** /vendors/{vendorID}/conversations/{conversationID} | Retrieve a vendor conversation |
| [**get_vendor_conversations**](VendorsApi.md#get_vendor_conversations) | **GET** /vendors/{vendorID}/conversations | Retrieve all vendor conversations |
| [**get_vendors**](VendorsApi.md#get_vendors) | **GET** /vendors | Retrieve all vendors |
| [**update_vendor**](VendorsApi.md#update_vendor) | **PUT** /vendors/customfields | Update a vendor custom fields (BETA) |


## create_vendor

> <Vendor> create_vendor(save_vendor)

Create a vendor

Creates a vendor.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::VendorsApi.new
save_vendor = Propertyware::SaveVendor.new({company_name: 'company_name_example', name: 'name_example', name_on_check: 'name_on_check_example', vendor_type: 'vendor_type_example'}) # SaveVendor | saveVendor

begin
  # Create a vendor
  result = api_instance.create_vendor(save_vendor)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->create_vendor: #{e}"
end
```

#### Using the create_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Vendor>, Integer, Hash)> create_vendor_with_http_info(save_vendor)

```ruby
begin
  # Create a vendor
  data, status_code, headers = api_instance.create_vendor_with_http_info(save_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Vendor>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_vendor** | [**SaveVendor**](SaveVendor.md) | saveVendor |  |

### Return type

[**Vendor**](Vendor.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vendors

> <Array<RESTAPIBulkSuccessResponse>> create_vendors(save_vendor)

Create Vendors in bulk

Creates Vendors in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::VendorsApi.new
save_vendor = [Propertyware::SaveVendor.new({company_name: 'company_name_example', name: 'name_example', name_on_check: 'name_on_check_example', vendor_type: 'vendor_type_example'})] # Array<SaveVendor> | saveVendor

begin
  # Create Vendors in bulk
  result = api_instance.create_vendors(save_vendor)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->create_vendors: #{e}"
end
```

#### Using the create_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_vendors_with_http_info(save_vendor)

```ruby
begin
  # Create Vendors in bulk
  data, status_code, headers = api_instance.create_vendors_with_http_info(save_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->create_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_vendor** | [**Array&lt;SaveVendor&gt;**](SaveVendor.md) | saveVendor |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_vendor

> <Vendor> get_vendor(vendor_id, opts)

Retrieve a vendor

Retrieves a specific vendor.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Read</code> 

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

api_instance = Propertyware::VendorsApi.new
vendor_id = 789 # Integer | Vendor ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve a vendor
  result = api_instance.get_vendor(vendor_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor: #{e}"
end
```

#### Using the get_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Vendor>, Integer, Hash)> get_vendor_with_http_info(vendor_id, opts)

```ruby
begin
  # Retrieve a vendor
  data, status_code, headers = api_instance.get_vendor_with_http_info(vendor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Vendor>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** | Vendor ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |

### Return type

[**Vendor**](Vendor.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_account

> <Account> get_vendor_account(vendor_id)

Retrieve vendor GL account

Retrieves the default general ledger account of a vendor.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Read</code> 

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

api_instance = Propertyware::VendorsApi.new
vendor_id = 789 # Integer | Vendor ID

begin
  # Retrieve vendor GL account
  result = api_instance.get_vendor_account(vendor_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_account: #{e}"
end
```

#### Using the get_vendor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> get_vendor_account_with_http_info(vendor_id)

```ruby
begin
  # Retrieve vendor GL account
  data, status_code, headers = api_instance.get_vendor_account_with_http_info(vendor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** | Vendor ID |  |

### Return type

[**Account**](Account.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_conversation

> <Conversation> get_vendor_conversation(vendor_id, conversation_id)

Retrieve a vendor conversation

Retrieves a specific vendor conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Read</code> 

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

api_instance = Propertyware::VendorsApi.new
vendor_id = 789 # Integer | Vendor ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Retrieve a vendor conversation
  result = api_instance.get_vendor_conversation(vendor_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_conversation: #{e}"
end
```

#### Using the get_vendor_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> get_vendor_conversation_with_http_info(vendor_id, conversation_id)

```ruby
begin
  # Retrieve a vendor conversation
  data, status_code, headers = api_instance.get_vendor_conversation_with_http_info(vendor_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** | Vendor ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_conversations

> <Array<Conversation>> get_vendor_conversations(vendor_id, opts)

Retrieve all vendor conversations

Retrieves all the conversations of a vendor.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::VendorsApi.new
vendor_id = 789 # Integer | Vendor ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  type: 'MANAGEMENT_TEAM' # String | Filters results by the conversation type.
}

begin
  # Retrieve all vendor conversations
  result = api_instance.get_vendor_conversations(vendor_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_conversations: #{e}"
end
```

#### Using the get_vendor_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Conversation>>, Integer, Hash)> get_vendor_conversations_with_http_info(vendor_id, opts)

```ruby
begin
  # Retrieve all vendor conversations
  data, status_code, headers = api_instance.get_vendor_conversations_with_http_info(vendor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Conversation>>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** | Vendor ID |  |
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


## get_vendors

> <Array<Vendor>> get_vendors(opts)

Retrieve all vendors

Retrieves a list of vendors.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>vendortype</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::VendorsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  active: true, # Boolean | Filters results by the vendor's status. If no value is specified, vendors with any status will be returned.
  type: 'type_example', # String | Filters results to units with a specific type.
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve all vendors
  result = api_instance.get_vendors(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendors: #{e}"
end
```

#### Using the get_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Vendor>>, Integer, Hash)> get_vendors_with_http_info(opts)

```ruby
begin
  # Retrieve all vendors
  data, status_code, headers = api_instance.get_vendors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Vendor>>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_with_http_info: #{e}"
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
| **active** | **Boolean** | Filters results by the vendor&#39;s status. If no value is specified, vendors with any status will be returned. | [optional] |
| **type** | **String** | Filters results to units with a specific type. | [optional] |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |

### Return type

[**Array&lt;Vendor&gt;**](Vendor.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_vendor

> <ResponseEntity> update_vendor(save_custom_field)

Update a vendor custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing vendor custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::VendorsApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a vendor custom fields (BETA)
  result = api_instance.update_vendor(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->update_vendor: #{e}"
end
```

#### Using the update_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_vendor_with_http_info(save_custom_field)

```ruby
begin
  # Update a vendor custom fields (BETA)
  data, status_code, headers = api_instance.update_vendor_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling VendorsApi->update_vendor_with_http_info: #{e}"
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

