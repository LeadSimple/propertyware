# Propertyware::PortfoliosApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_portfolio**](PortfoliosApi.md#create_portfolio) | **POST** /portfolios | Create a portfolio |
| [**create_portfolios**](PortfoliosApi.md#create_portfolios) | **POST** /portfolios/bulk | Create Portfolios in bulk |
| [**delete_portfolio_conversation**](PortfoliosApi.md#delete_portfolio_conversation) | **DELETE** /portfolios/{portfolioID}/conversations/{conversationID} | Delete a portfolio conversation (BETA) |
| [**get_portfolio**](PortfoliosApi.md#get_portfolio) | **GET** /portfolios/{portfolioID} | Retrieve a portfolio |
| [**get_portfolio_conversation**](PortfoliosApi.md#get_portfolio_conversation) | **GET** /portfolios/{portfolioID}/conversations/{conversationID} | Retrieve a portfolio conversation |
| [**get_portfolio_conversations**](PortfoliosApi.md#get_portfolio_conversations) | **GET** /portfolios/{portfolioID}/conversations | Retrieve all portfolio conversations |
| [**get_portfolios**](PortfoliosApi.md#get_portfolios) | **GET** /portfolios | Retrieve all portfolios |
| [**update_portfolio**](PortfoliosApi.md#update_portfolio) | **PUT** /portfolios/customfields | Update a portfolio custom fields (BETA) |
| [**update_portfolio_using_put1**](PortfoliosApi.md#update_portfolio_using_put1) | **PUT** /portfolios/{portfolioID} | Update a portfolio |


## create_portfolio

> <Portfolio> create_portfolio(save_portfolio)

Create a portfolio

Creates a portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::PortfoliosApi.new
save_portfolio = Propertyware::SavePortfolio.new({abbreviation: 'abbreviation_example', name: 'name_example'}) # SavePortfolio | savePortfolio

begin
  # Create a portfolio
  result = api_instance.create_portfolio(save_portfolio)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->create_portfolio: #{e}"
end
```

#### Using the create_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Portfolio>, Integer, Hash)> create_portfolio_with_http_info(save_portfolio)

```ruby
begin
  # Create a portfolio
  data, status_code, headers = api_instance.create_portfolio_with_http_info(save_portfolio)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Portfolio>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->create_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_portfolio** | [**SavePortfolio**](SavePortfolio.md) | savePortfolio |  |

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_portfolios

> <Array<RESTAPIBulkSuccessResponse>> create_portfolios(save_portfolio)

Create Portfolios in bulk

Creates Portfolios in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::PortfoliosApi.new
save_portfolio = [Propertyware::SavePortfolio.new({abbreviation: 'abbreviation_example', name: 'name_example'})] # Array<SavePortfolio> | savePortfolio

begin
  # Create Portfolios in bulk
  result = api_instance.create_portfolios(save_portfolio)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->create_portfolios: #{e}"
end
```

#### Using the create_portfolios_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_portfolios_with_http_info(save_portfolio)

```ruby
begin
  # Create Portfolios in bulk
  data, status_code, headers = api_instance.create_portfolios_with_http_info(save_portfolio)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->create_portfolios_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_portfolio** | [**Array&lt;SavePortfolio&gt;**](SavePortfolio.md) | savePortfolio |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_portfolio_conversation

> <ResponseEntity> delete_portfolio_conversation(portfolio_id, conversation_id)

Delete a portfolio conversation (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific portfolio conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Delete</code> 

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

api_instance = Propertyware::PortfoliosApi.new
portfolio_id = 789 # Integer | Portfolio ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Delete a portfolio conversation (BETA)
  result = api_instance.delete_portfolio_conversation(portfolio_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->delete_portfolio_conversation: #{e}"
end
```

#### Using the delete_portfolio_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_portfolio_conversation_with_http_info(portfolio_id, conversation_id)

```ruby
begin
  # Delete a portfolio conversation (BETA)
  data, status_code, headers = api_instance.delete_portfolio_conversation_with_http_info(portfolio_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->delete_portfolio_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_id** | **Integer** | Portfolio ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio

> <Portfolio> get_portfolio(portfolio_id, opts)

Retrieve a portfolio

Retrieves a specific portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> 

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

api_instance = Propertyware::PortfoliosApi.new
portfolio_id = 789 # Integer | Portfolio ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve a portfolio
  result = api_instance.get_portfolio(portfolio_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolio: #{e}"
end
```

#### Using the get_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Portfolio>, Integer, Hash)> get_portfolio_with_http_info(portfolio_id, opts)

```ruby
begin
  # Retrieve a portfolio
  data, status_code, headers = api_instance.get_portfolio_with_http_info(portfolio_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Portfolio>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_id** | **Integer** | Portfolio ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_conversation

> <Conversation> get_portfolio_conversation(portfolio_id, conversation_id)

Retrieve a portfolio conversation

Retrieves a specific portfolio conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> 

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

api_instance = Propertyware::PortfoliosApi.new
portfolio_id = 789 # Integer | Portfolio ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Retrieve a portfolio conversation
  result = api_instance.get_portfolio_conversation(portfolio_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolio_conversation: #{e}"
end
```

#### Using the get_portfolio_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> get_portfolio_conversation_with_http_info(portfolio_id, conversation_id)

```ruby
begin
  # Retrieve a portfolio conversation
  data, status_code, headers = api_instance.get_portfolio_conversation_with_http_info(portfolio_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolio_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_id** | **Integer** | Portfolio ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_conversations

> <Array<Conversation>> get_portfolio_conversations(portfolio_id, opts)

Retrieve all portfolio conversations

Retrieves all the conversations of a portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::PortfoliosApi.new
portfolio_id = 789 # Integer | Portfolio ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  type: 'MANAGEMENT_TEAM' # String | Filters results by the conversation type.
}

begin
  # Retrieve all portfolio conversations
  result = api_instance.get_portfolio_conversations(portfolio_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolio_conversations: #{e}"
end
```

#### Using the get_portfolio_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Conversation>>, Integer, Hash)> get_portfolio_conversations_with_http_info(portfolio_id, opts)

```ruby
begin
  # Retrieve all portfolio conversations
  data, status_code, headers = api_instance.get_portfolio_conversations_with_http_info(portfolio_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Conversation>>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolio_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_id** | **Integer** | Portfolio ID |  |
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


## get_portfolios

> <Array<Portfolio>> get_portfolios(opts)

Retrieve all portfolios

Retrieves a list of portfolios.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>name</code>, <code>abbreviation</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::PortfoliosApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  include_deactivated: true, # Boolean | Filters results to portfolios with a deactivated records.
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve all portfolios
  result = api_instance.get_portfolios(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolios: #{e}"
end
```

#### Using the get_portfolios_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Portfolio>>, Integer, Hash)> get_portfolios_with_http_info(opts)

```ruby
begin
  # Retrieve all portfolios
  data, status_code, headers = api_instance.get_portfolios_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Portfolio>>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->get_portfolios_with_http_info: #{e}"
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
| **include_deactivated** | **Boolean** | Filters results to portfolios with a deactivated records. | [optional] |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |

### Return type

[**Array&lt;Portfolio&gt;**](Portfolio.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_portfolio

> <ResponseEntity> update_portfolio(save_custom_field)

Update a portfolio custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing portfolio custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::PortfoliosApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a portfolio custom fields (BETA)
  result = api_instance.update_portfolio(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->update_portfolio: #{e}"
end
```

#### Using the update_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_portfolio_with_http_info(save_custom_field)

```ruby
begin
  # Update a portfolio custom fields (BETA)
  data, status_code, headers = api_instance.update_portfolio_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->update_portfolio_with_http_info: #{e}"
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


## update_portfolio_using_put1

> <Portfolio> update_portfolio_using_put1(portfolio_id, save_portfolio)

Update a portfolio

Updates an existing portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::PortfoliosApi.new
portfolio_id = 789 # Integer | Portfolio ID
save_portfolio = Propertyware::SavePortfolio.new({abbreviation: 'abbreviation_example', name: 'name_example'}) # SavePortfolio | savePortfolio

begin
  # Update a portfolio
  result = api_instance.update_portfolio_using_put1(portfolio_id, save_portfolio)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->update_portfolio_using_put1: #{e}"
end
```

#### Using the update_portfolio_using_put1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Portfolio>, Integer, Hash)> update_portfolio_using_put1_with_http_info(portfolio_id, save_portfolio)

```ruby
begin
  # Update a portfolio
  data, status_code, headers = api_instance.update_portfolio_using_put1_with_http_info(portfolio_id, save_portfolio)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Portfolio>
rescue Propertyware::ApiError => e
  puts "Error when calling PortfoliosApi->update_portfolio_using_put1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_id** | **Integer** | Portfolio ID |  |
| **save_portfolio** | [**SavePortfolio**](SavePortfolio.md) | savePortfolio |  |

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

