# Propertyware::ProspectsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contacts_using_post2**](ProspectsApi.md#create_contacts_using_post2) | **POST** /prospects/bulk | Create prospects in bulk |
| [**create_prospect**](ProspectsApi.md#create_prospect) | **POST** /prospects | Create a prospect |
| [**create_prospect_conversation**](ProspectsApi.md#create_prospect_conversation) | **POST** /prospects/{prospectID}/conversations | Create a prospect conversation |
| [**delete_prospect_conversation**](ProspectsApi.md#delete_prospect_conversation) | **DELETE** /prospects/{prospectID}/conversations/{conversationID} | Delete a prospect conversation (BETA) |
| [**get_prospect**](ProspectsApi.md#get_prospect) | **GET** /prospects/{prospectID} | Retrieve a prospect |
| [**get_prospect_campaign**](ProspectsApi.md#get_prospect_campaign) | **GET** /prospects/{prospectID}/campaign | Retrieve prospect campaign |
| [**get_prospect_conversation**](ProspectsApi.md#get_prospect_conversation) | **GET** /prospects/{prospectID}/conversations/{conversationID} | Retrieve a prospect conversation |
| [**get_prospect_conversations**](ProspectsApi.md#get_prospect_conversations) | **GET** /prospects/{prospectID}/conversations | Retrieve all prospect conversations |
| [**get_prospect_statuses**](ProspectsApi.md#get_prospect_statuses) | **GET** /prospects/statuses | Retrieve all prospect statuses |
| [**get_prospects**](ProspectsApi.md#get_prospects) | **GET** /prospects | Retrieve all prospects |
| [**update_lease_using_put2**](ProspectsApi.md#update_lease_using_put2) | **PUT** /prospects/customfields | Update a prospect custom fields (BETA) |


## create_contacts_using_post2

> <Array<RESTAPIBulkSuccessResponse>> create_contacts_using_post2(save_prospect)

Create prospects in bulk

Creates prospects in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">UNITS</span> - <code>Write</code> 

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

api_instance = Propertyware::ProspectsApi.new
save_prospect = [Propertyware::SaveProspect.new] # Array<SaveProspect> | saveProspect

begin
  # Create prospects in bulk
  result = api_instance.create_contacts_using_post2(save_prospect)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->create_contacts_using_post2: #{e}"
end
```

#### Using the create_contacts_using_post2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_contacts_using_post2_with_http_info(save_prospect)

```ruby
begin
  # Create prospects in bulk
  data, status_code, headers = api_instance.create_contacts_using_post2_with_http_info(save_prospect)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->create_contacts_using_post2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_prospect** | [**Array&lt;SaveProspect&gt;**](SaveProspect.md) | saveProspect |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_prospect

> <Prospect> create_prospect(save_prospect)

Create a prospect

Creates a specific prospect.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Write</code> 

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

api_instance = Propertyware::ProspectsApi.new
save_prospect = Propertyware::SaveProspect.new # SaveProspect | saveProspect

begin
  # Create a prospect
  result = api_instance.create_prospect(save_prospect)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->create_prospect: #{e}"
end
```

#### Using the create_prospect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Prospect>, Integer, Hash)> create_prospect_with_http_info(save_prospect)

```ruby
begin
  # Create a prospect
  data, status_code, headers = api_instance.create_prospect_with_http_info(save_prospect)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Prospect>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->create_prospect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_prospect** | [**SaveProspect**](SaveProspect.md) | saveProspect |  |

### Return type

[**Prospect**](Prospect.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_prospect_conversation

> <Conversation> create_prospect_conversation(prospect_id, save_conversation)

Create a prospect conversation

Creates a specific prospect conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Write</code> 

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

api_instance = Propertyware::ProspectsApi.new
prospect_id = 789 # Integer | Prospect ID
save_conversation = Propertyware::SaveConversation.new({text: 'text_example', type: 'MANAGEMENT_TEAM'}) # SaveConversation | saveConversation

begin
  # Create a prospect conversation
  result = api_instance.create_prospect_conversation(prospect_id, save_conversation)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->create_prospect_conversation: #{e}"
end
```

#### Using the create_prospect_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> create_prospect_conversation_with_http_info(prospect_id, save_conversation)

```ruby
begin
  # Create a prospect conversation
  data, status_code, headers = api_instance.create_prospect_conversation_with_http_info(prospect_id, save_conversation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->create_prospect_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prospect_id** | **Integer** | Prospect ID |  |
| **save_conversation** | [**SaveConversation**](SaveConversation.md) | saveConversation |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_prospect_conversation

> <ResponseEntity> delete_prospect_conversation(prospect_id, conversation_id)

Delete a prospect conversation (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific prospect conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Delete</code> 

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

api_instance = Propertyware::ProspectsApi.new
prospect_id = 789 # Integer | Prospect ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Delete a prospect conversation (BETA)
  result = api_instance.delete_prospect_conversation(prospect_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->delete_prospect_conversation: #{e}"
end
```

#### Using the delete_prospect_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_prospect_conversation_with_http_info(prospect_id, conversation_id)

```ruby
begin
  # Delete a prospect conversation (BETA)
  data, status_code, headers = api_instance.delete_prospect_conversation_with_http_info(prospect_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->delete_prospect_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prospect_id** | **Integer** | Prospect ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prospect

> <Prospect> get_prospect(prospect_id, opts)

Retrieve a prospect

Retrieves a specific prospect.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Read</code> 

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

api_instance = Propertyware::ProspectsApi.new
prospect_id = 789 # Integer | Prospect ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve a prospect
  result = api_instance.get_prospect(prospect_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect: #{e}"
end
```

#### Using the get_prospect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Prospect>, Integer, Hash)> get_prospect_with_http_info(prospect_id, opts)

```ruby
begin
  # Retrieve a prospect
  data, status_code, headers = api_instance.get_prospect_with_http_info(prospect_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Prospect>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prospect_id** | **Integer** | Prospect ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |

### Return type

[**Prospect**](Prospect.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prospect_campaign

> <Campaign> get_prospect_campaign(prospect_id)

Retrieve prospect campaign

Retrieves the campaign details of a prospect.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Read</code> 

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

api_instance = Propertyware::ProspectsApi.new
prospect_id = 789 # Integer | Prospect ID

begin
  # Retrieve prospect campaign
  result = api_instance.get_prospect_campaign(prospect_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_campaign: #{e}"
end
```

#### Using the get_prospect_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> get_prospect_campaign_with_http_info(prospect_id)

```ruby
begin
  # Retrieve prospect campaign
  data, status_code, headers = api_instance.get_prospect_campaign_with_http_info(prospect_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prospect_id** | **Integer** | Prospect ID |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prospect_conversation

> <Conversation> get_prospect_conversation(prospect_id, conversation_id)

Retrieve a prospect conversation

Retrieves a specific prospect conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Read</code> 

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

api_instance = Propertyware::ProspectsApi.new
prospect_id = 789 # Integer | Prospect ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Retrieve a prospect conversation
  result = api_instance.get_prospect_conversation(prospect_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_conversation: #{e}"
end
```

#### Using the get_prospect_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> get_prospect_conversation_with_http_info(prospect_id, conversation_id)

```ruby
begin
  # Retrieve a prospect conversation
  data, status_code, headers = api_instance.get_prospect_conversation_with_http_info(prospect_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prospect_id** | **Integer** | Prospect ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prospect_conversations

> <Array<Conversation>> get_prospect_conversations(prospect_id, opts)

Retrieve all prospect conversations

Retrieves all the conversations of a prospect.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::ProspectsApi.new
prospect_id = 789 # Integer | Prospect ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  type: 'MANAGEMENT_TEAM' # String | Filters results by the conversation type.
}

begin
  # Retrieve all prospect conversations
  result = api_instance.get_prospect_conversations(prospect_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_conversations: #{e}"
end
```

#### Using the get_prospect_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Conversation>>, Integer, Hash)> get_prospect_conversations_with_http_info(prospect_id, opts)

```ruby
begin
  # Retrieve all prospect conversations
  data, status_code, headers = api_instance.get_prospect_conversations_with_http_info(prospect_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Conversation>>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prospect_id** | **Integer** | Prospect ID |  |
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


## get_prospect_statuses

> <Array<ProspectStatus>> get_prospect_statuses

Retrieve all prospect statuses

Retrieves a list of all prospect statuses<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Read</code> 

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

api_instance = Propertyware::ProspectsApi.new

begin
  # Retrieve all prospect statuses
  result = api_instance.get_prospect_statuses
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_statuses: #{e}"
end
```

#### Using the get_prospect_statuses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProspectStatus>>, Integer, Hash)> get_prospect_statuses_with_http_info

```ruby
begin
  # Retrieve all prospect statuses
  data, status_code, headers = api_instance.get_prospect_statuses_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProspectStatus>>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospect_statuses_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ProspectStatus&gt;**](ProspectStatus.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prospects

> <Array<Prospect>> get_prospects(opts)

Retrieve all prospects

Retrieves a list of prospects.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>type</code>, <code>lastmodifieddatetime</code>, <code>status</code>, <code>id</code>

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

api_instance = Propertyware::ProspectsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  status: 'status_example', # String | Filters results to prospects with a specific status.
  portfolio_id: 789, # Integer | Filters results to prospects associated with a specific portfolio.
  building_id: 789, # Integer | Filters results to prospects associated with a specific building.
  type: 'type_example', # String | Filters results to prospects with a specific type.
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve all prospects
  result = api_instance.get_prospects(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospects: #{e}"
end
```

#### Using the get_prospects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Prospect>>, Integer, Hash)> get_prospects_with_http_info(opts)

```ruby
begin
  # Retrieve all prospects
  data, status_code, headers = api_instance.get_prospects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Prospect>>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->get_prospects_with_http_info: #{e}"
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
| **status** | **String** | Filters results to prospects with a specific status. | [optional] |
| **portfolio_id** | **Integer** | Filters results to prospects associated with a specific portfolio. | [optional] |
| **building_id** | **Integer** | Filters results to prospects associated with a specific building. | [optional] |
| **type** | **String** | Filters results to prospects with a specific type. | [optional] |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |

### Return type

[**Array&lt;Prospect&gt;**](Prospect.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lease_using_put2

> <ResponseEntity> update_lease_using_put2(save_custom_field)

Update a prospect custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing prospect custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PROSPECTS</span> - <code>Write</code> 

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

api_instance = Propertyware::ProspectsApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a prospect custom fields (BETA)
  result = api_instance.update_lease_using_put2(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->update_lease_using_put2: #{e}"
end
```

#### Using the update_lease_using_put2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_lease_using_put2_with_http_info(save_custom_field)

```ruby
begin
  # Update a prospect custom fields (BETA)
  data, status_code, headers = api_instance.update_lease_using_put2_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling ProspectsApi->update_lease_using_put2_with_http_info: #{e}"
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

