# Propertyware::DocumentsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_document**](DocumentsApi.md#delete_document) | **DELETE** /docs/{documentId} | Delete a document (BETA) |
| [**download_document**](DocumentsApi.md#download_document) | **GET** /docs/{documentId}/download | Download a document |
| [**retrieve_all_documents**](DocumentsApi.md#retrieve_all_documents) | **GET** /docs | Retrieve all documents |
| [**retrieve_document**](DocumentsApi.md#retrieve_document) | **GET** /docs/{documentId} | Retrieve a document |
| [**update_document**](DocumentsApi.md#update_document) | **PUT** /docs/{documentId} | Update a document |
| [**upload_document**](DocumentsApi.md#upload_document) | **POST** /docs | Upload a document |


## delete_document

> <ResponseEntity> delete_document(document_id)

Delete a document (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific document and its associated content.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">DOCUMENTS</span> - <code>Delete</code> 

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

api_instance = Propertyware::DocumentsApi.new
document_id = 789 # Integer | ID of the document to delete

begin
  # Delete a document (BETA)
  result = api_instance.delete_document(document_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->delete_document: #{e}"
end
```

#### Using the delete_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_document_with_http_info(document_id)

```ruby
begin
  # Delete a document (BETA)
  data, status_code, headers = api_instance.delete_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->delete_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **Integer** | ID of the document to delete |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_document

> <ResponseEntity> download_document(document_id)

Download a document

Retrieve a temporary download URL for a specific document.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">DOCUMENTS</span> - <code>Read</code> 

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

api_instance = Propertyware::DocumentsApi.new
document_id = 789 # Integer | ID of the document to download

begin
  # Download a document
  result = api_instance.download_document(document_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->download_document: #{e}"
end
```

#### Using the download_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> download_document_with_http_info(document_id)

```ruby
begin
  # Download a document
  data, status_code, headers = api_instance.download_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->download_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **Integer** | ID of the document to download |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## retrieve_all_documents

> <Array<Document>> retrieve_all_documents(entity_type, opts)

Retrieve all documents

Retrieves a list of documents associated with a specific entity.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">DOCUMENTS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::DocumentsApi.new
entity_type = 'APPOINTMENT' # String | Filters results to documents associated with a specific entity type.
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  entity_id: 789 # Integer | Filters results to documents associated with a specific entity id. entity ID is not required for “DESKTOP” and “OTHER”. Remaining entities need “entity ID”.
}

begin
  # Retrieve all documents
  result = api_instance.retrieve_all_documents(entity_type, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_all_documents: #{e}"
end
```

#### Using the retrieve_all_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Document>>, Integer, Hash)> retrieve_all_documents_with_http_info(entity_type, opts)

```ruby
begin
  # Retrieve all documents
  data, status_code, headers = api_instance.retrieve_all_documents_with_http_info(entity_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Document>>
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_all_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Filters results to documents associated with a specific entity type. |  |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. | [optional][default to 100] |
| **last_modified_date_time_start** | **Time** | Filters results to any item modified on or after the date time specified.  | [optional] |
| **last_modified_date_time_end** | **Time** | Filters results to any item modified on or prior to the date time specified.  | [optional] |
| **orderby** | **String** | Indicates the field(s) and direction to sort the results in the response. | [optional] |
| **entity_id** | **Integer** | Filters results to documents associated with a specific entity id. entity ID is not required for “DESKTOP” and “OTHER”. Remaining entities need “entity ID”. | [optional] |

### Return type

[**Array&lt;Document&gt;**](Document.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_document

> <Document> retrieve_document(document_id)

Retrieve a document

Retrieves the metadata of a specific document.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">DOCUMENTS</span> - <code>Read</code> 

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

api_instance = Propertyware::DocumentsApi.new
document_id = 789 # Integer | ID of the document to retrieve

begin
  # Retrieve a document
  result = api_instance.retrieve_document(document_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_document: #{e}"
end
```

#### Using the retrieve_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> retrieve_document_with_http_info(document_id)

```ruby
begin
  # Retrieve a document
  data, status_code, headers = api_instance.retrieve_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **Integer** | ID of the document to retrieve |  |

### Return type

[**Document**](Document.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_document

> <Document> update_document(document_id, update_document)

Update a document

Updates the metadata of a specific document.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">DOCUMENTS</span> - <code>Write</code> 

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

api_instance = Propertyware::DocumentsApi.new
document_id = 789 # Integer | ID of the document to be updated
update_document = Propertyware::UpdateDocument.new({file_name: 'file_name_example'}) # UpdateDocument | updateDocument

begin
  # Update a document
  result = api_instance.update_document(document_id, update_document)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->update_document: #{e}"
end
```

#### Using the update_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> update_document_with_http_info(document_id, update_document)

```ruby
begin
  # Update a document
  data, status_code, headers = api_instance.update_document_with_http_info(document_id, update_document)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->update_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **Integer** | ID of the document to be updated |  |
| **update_document** | [**UpdateDocument**](UpdateDocument.md) | updateDocument |  |

### Return type

[**Document**](Document.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_document

> <Document> upload_document(entity_id, entity_type, file, opts)

Upload a document

Upload a document<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">DOCUMENTS</span> - <code>Write</code> 

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

api_instance = Propertyware::DocumentsApi.new
entity_id = 789 # Integer | Unique identifier of an entity document is attached to.
entity_type = 'entity_type_example' # String | Entity type Document is attached to (Asset, Bill, Bank Deposit, Building, Desktop, Lease, Owner, Portfolio, Prospect, Prospect Contact, Tenant, Unit, Vendor, Check, Credit, Service Agreement, Journal Entry, Work Order)
file = File.new('/path/to/some/file') # File | file
opts = {
  publish_to_tenant_portal: true, # Boolean | Indicates if the document is published to the tenant portal.
  publish_to_owner_portal: true # Boolean | Indicates if the document is published to the owner portal.
}

begin
  # Upload a document
  result = api_instance.upload_document(entity_id, entity_type, file, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->upload_document: #{e}"
end
```

#### Using the upload_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> upload_document_with_http_info(entity_id, entity_type, file, opts)

```ruby
begin
  # Upload a document
  data, status_code, headers = api_instance.upload_document_with_http_info(entity_id, entity_type, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Propertyware::ApiError => e
  puts "Error when calling DocumentsApi->upload_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Unique identifier of an entity document is attached to. |  |
| **entity_type** | **String** | Entity type Document is attached to (Asset, Bill, Bank Deposit, Building, Desktop, Lease, Owner, Portfolio, Prospect, Prospect Contact, Tenant, Unit, Vendor, Check, Credit, Service Agreement, Journal Entry, Work Order) |  |
| **file** | **File** | file |  |
| **publish_to_tenant_portal** | **Boolean** | Indicates if the document is published to the tenant portal. | [optional] |
| **publish_to_owner_portal** | **Boolean** | Indicates if the document is published to the owner portal. | [optional] |

### Return type

[**Document**](Document.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

