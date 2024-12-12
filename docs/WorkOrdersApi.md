# Propertyware::WorkOrdersApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_work_order_task_comments**](WorkOrdersApi.md#add_work_order_task_comments) | **POST** /workorders/{workOrderId}/tasks/{taskId}/comments | Add Comments to task for a workOrder |
| [**close_work_order**](WorkOrdersApi.md#close_work_order) | **PUT** /workorders/closeworkorder/{workOrderID} | Close a Workorder  (BETA) |
| [**create_work_order**](WorkOrdersApi.md#create_work_order) | **POST** /workorders | Create a work order |
| [**create_work_order_task**](WorkOrdersApi.md#create_work_order_task) | **POST** /workorders/{workOrderId}/tasks | Create a task to workOrder |
| [**create_work_orders**](WorkOrdersApi.md#create_work_orders) | **POST** /workorders/bulk | Create work orders in bulk |
| [**delete_work_order**](WorkOrdersApi.md#delete_work_order) | **DELETE** /workorders/{workOrderID} | Delete a Work Order (BETA) |
| [**delete_work_order_task**](WorkOrdersApi.md#delete_work_order_task) | **DELETE** /workorders/{workOrderID}/tasks/{taskID} | Delete a work order task (BETA) |
| [**get_work_order**](WorkOrdersApi.md#get_work_order) | **GET** /workorders/{workOrderId} | Retrieve a work order |
| [**get_work_order_task**](WorkOrdersApi.md#get_work_order_task) | **GET** /workorders/{workOrderID}/tasks/{taskID} | Retrieve a work order task |
| [**get_work_order_tasks**](WorkOrdersApi.md#get_work_order_tasks) | **GET** /workorders/{workOrderId}/tasks | Retrieve all work order tasks |
| [**get_work_orders**](WorkOrdersApi.md#get_work_orders) | **GET** /workorders | Retrieve all work orders |
| [**update_work_order**](WorkOrdersApi.md#update_work_order) | **PUT** /workorders/customfields | Update a workorder custom fields (BETA) |
| [**update_work_order_task**](WorkOrdersApi.md#update_work_order_task) | **PUT** /workorders/{workOrderId}/tasks/{taskId} | Update a task in workOrder |


## add_work_order_task_comments

> <Task> add_work_order_task_comments(work_order_id, task_id, save_comment)

Add Comments to task for a workOrder

Add Comments to task for WorkOrder.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
task_id = 789 # Integer | Task ID
save_comment = Propertyware::SaveComment.new({text: 'text_example'}) # SaveComment | saveComment

begin
  # Add Comments to task for a workOrder
  result = api_instance.add_work_order_task_comments(work_order_id, task_id, save_comment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->add_work_order_task_comments: #{e}"
end
```

#### Using the add_work_order_task_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> add_work_order_task_comments_with_http_info(work_order_id, task_id, save_comment)

```ruby
begin
  # Add Comments to task for a workOrder
  data, status_code, headers = api_instance.add_work_order_task_comments_with_http_info(work_order_id, task_id, save_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->add_work_order_task_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **task_id** | **Integer** | Task ID |  |
| **save_comment** | [**SaveComment**](SaveComment.md) | saveComment |  |

### Return type

[**Task**](Task.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## close_work_order

> <ResponseEntity> close_work_order(work_order_id, close_work_order)

Close a Workorder  (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Close an existing Workorder<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | WorkOrder ID
close_work_order = Propertyware::CloseWorkOrder.new({time_card_entry: [Propertyware::TimeCardEntry.new({vendor_id: 3.56})]}) # CloseWorkOrder | closeWorkOrder

begin
  # Close a Workorder  (BETA)
  result = api_instance.close_work_order(work_order_id, close_work_order)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->close_work_order: #{e}"
end
```

#### Using the close_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> close_work_order_with_http_info(work_order_id, close_work_order)

```ruby
begin
  # Close a Workorder  (BETA)
  data, status_code, headers = api_instance.close_work_order_with_http_info(work_order_id, close_work_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->close_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | WorkOrder ID |  |
| **close_work_order** | [**CloseWorkOrder**](CloseWorkOrder.md) | closeWorkOrder |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_work_order

> <WorkOrder> create_work_order(save_work_order)

Create a work order

Creates a work order.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
save_work_order = Propertyware::SaveWorkOrder.new({building_id: 3.56}) # SaveWorkOrder | saveWorkOrder

begin
  # Create a work order
  result = api_instance.create_work_order(save_work_order)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_order: #{e}"
end
```

#### Using the create_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrder>, Integer, Hash)> create_work_order_with_http_info(save_work_order)

```ruby
begin
  # Create a work order
  data, status_code, headers = api_instance.create_work_order_with_http_info(save_work_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrder>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_work_order** | [**SaveWorkOrder**](SaveWorkOrder.md) | saveWorkOrder |  |

### Return type

[**WorkOrder**](WorkOrder.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_work_order_task

> <Task> create_work_order_task(work_order_id, save_work_order_task)

Create a task to workOrder

Create a task to an workOrder.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
save_work_order_task = Propertyware::SaveWorkOrderTask.new({description: 'description_example'}) # SaveWorkOrderTask | saveWorkOrderTask

begin
  # Create a task to workOrder
  result = api_instance.create_work_order_task(work_order_id, save_work_order_task)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_order_task: #{e}"
end
```

#### Using the create_work_order_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> create_work_order_task_with_http_info(work_order_id, save_work_order_task)

```ruby
begin
  # Create a task to workOrder
  data, status_code, headers = api_instance.create_work_order_task_with_http_info(work_order_id, save_work_order_task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_order_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **save_work_order_task** | [**SaveWorkOrderTask**](SaveWorkOrderTask.md) | saveWorkOrderTask |  |

### Return type

[**Task**](Task.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_work_orders

> <Array<RESTAPIBulkSuccessResponse>> create_work_orders(save_work_order)

Create work orders in bulk

Creates word orders in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
save_work_order = [Propertyware::SaveWorkOrder.new({building_id: 3.56})] # Array<SaveWorkOrder> | saveWorkOrder

begin
  # Create work orders in bulk
  result = api_instance.create_work_orders(save_work_order)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_orders: #{e}"
end
```

#### Using the create_work_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_work_orders_with_http_info(save_work_order)

```ruby
begin
  # Create work orders in bulk
  data, status_code, headers = api_instance.create_work_orders_with_http_info(save_work_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_work_order** | [**Array&lt;SaveWorkOrder&gt;**](SaveWorkOrder.md) | saveWorkOrder |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_work_order

> <ResponseEntity> delete_work_order(work_order_id)

Delete a Work Order (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Delete a Work Order.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Delete</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID

begin
  # Delete a Work Order (BETA)
  result = api_instance.delete_work_order(work_order_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->delete_work_order: #{e}"
end
```

#### Using the delete_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_work_order_with_http_info(work_order_id)

```ruby
begin
  # Delete a Work Order (BETA)
  data, status_code, headers = api_instance.delete_work_order_with_http_info(work_order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->delete_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_work_order_task

> <ResponseEntity> delete_work_order_task(work_order_id, task_id)

Delete a work order task (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific work order task.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Delete</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
task_id = 789 # Integer | Task ID

begin
  # Delete a work order task (BETA)
  result = api_instance.delete_work_order_task(work_order_id, task_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->delete_work_order_task: #{e}"
end
```

#### Using the delete_work_order_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_work_order_task_with_http_info(work_order_id, task_id)

```ruby
begin
  # Delete a work order task (BETA)
  data, status_code, headers = api_instance.delete_work_order_task_with_http_info(work_order_id, task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->delete_work_order_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **task_id** | **Integer** | Task ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_work_order

> <WorkOrder> get_work_order(work_order_id, opts)

Retrieve a work order

Retrieves a specific work order.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Read</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve a work order
  result = api_instance.get_work_order(work_order_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order: #{e}"
end
```

#### Using the get_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrder>, Integer, Hash)> get_work_order_with_http_info(work_order_id, opts)

```ruby
begin
  # Retrieve a work order
  data, status_code, headers = api_instance.get_work_order_with_http_info(work_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrder>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |

### Return type

[**WorkOrder**](WorkOrder.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_work_order_task

> <Array<Task>> get_work_order_task(work_order_id, task_id)

Retrieve a work order task

Retrieves a specific work order task.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Read</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
task_id = 789 # Integer | Task ID

begin
  # Retrieve a work order task
  result = api_instance.get_work_order_task(work_order_id, task_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_task: #{e}"
end
```

#### Using the get_work_order_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Task>>, Integer, Hash)> get_work_order_task_with_http_info(work_order_id, task_id)

```ruby
begin
  # Retrieve a work order task
  data, status_code, headers = api_instance.get_work_order_task_with_http_info(work_order_id, task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Task>>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **task_id** | **Integer** | Task ID |  |

### Return type

[**Array&lt;Task&gt;**](Task.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_work_order_tasks

> <Array<Task>> get_work_order_tasks(work_order_id, opts)

Retrieve all work order tasks

Retrieves a list of work order tasks.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  due_date: Date.parse('2013-10-20'), # Date | Filters results by due day.
  completed: true # Boolean | Filters results by task status.
}

begin
  # Retrieve all work order tasks
  result = api_instance.get_work_order_tasks(work_order_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_tasks: #{e}"
end
```

#### Using the get_work_order_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Task>>, Integer, Hash)> get_work_order_tasks_with_http_info(work_order_id, opts)

```ruby
begin
  # Retrieve all work order tasks
  data, status_code, headers = api_instance.get_work_order_tasks_with_http_info(work_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Task>>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. | [optional][default to 100] |
| **last_modified_date_time_start** | **Time** | Filters results to any item modified on or after the date time specified.  | [optional] |
| **last_modified_date_time_end** | **Time** | Filters results to any item modified on or prior to the date time specified.  | [optional] |
| **orderby** | **String** | Indicates the field(s) and direction to sort the results in the response. | [optional] |
| **due_date** | **Date** | Filters results by due day. | [optional] |
| **completed** | **Boolean** | Filters results by task status. | [optional] |

### Return type

[**Array&lt;Task&gt;**](Task.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_work_orders

> <Array<WorkOrder>> get_work_orders(opts)

Retrieve all work orders

Retrieves a list of work orders.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>number</code>, <code>type</code>, <code>lastmodifieddatetime</code>, <code>status</code>, <code>id</code>

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

api_instance = Propertyware::WorkOrdersApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  portfolio_id: 789, # Integer | Filters results to prospects associated with a specific portfolio.
  building_id: 789, # Integer | Filters results to prospects associated with a specific building.
  status: 'status_example', # String | Filters results to work orders with a specific status.
  type: 'type_example', # String | Filters results to work orders with a specific type.
  priority: 'HIGH', # String | Filters results to work orders with a specific priority.
  completed_date_start: Date.parse('2013-10-20'), # Date | Filters results to any payment with a date on or after to the date specified.
  completed_date_end: Date.parse('2013-10-20'), # Date | Filters results to any payment with a date on or prior to the date specified.
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve all work orders
  result = api_instance.get_work_orders(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_orders: #{e}"
end
```

#### Using the get_work_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WorkOrder>>, Integer, Hash)> get_work_orders_with_http_info(opts)

```ruby
begin
  # Retrieve all work orders
  data, status_code, headers = api_instance.get_work_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WorkOrder>>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_orders_with_http_info: #{e}"
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
| **portfolio_id** | **Integer** | Filters results to prospects associated with a specific portfolio. | [optional] |
| **building_id** | **Integer** | Filters results to prospects associated with a specific building. | [optional] |
| **status** | **String** | Filters results to work orders with a specific status. | [optional] |
| **type** | **String** | Filters results to work orders with a specific type. | [optional] |
| **priority** | **String** | Filters results to work orders with a specific priority. | [optional] |
| **completed_date_start** | **Date** | Filters results to any payment with a date on or after to the date specified. | [optional] |
| **completed_date_end** | **Date** | Filters results to any payment with a date on or prior to the date specified. | [optional] |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |

### Return type

[**Array&lt;WorkOrder&gt;**](WorkOrder.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_work_order

> <ResponseEntity> update_work_order(save_custom_field)

Update a workorder custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing workorder custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a workorder custom fields (BETA)
  result = api_instance.update_work_order(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order: #{e}"
end
```

#### Using the update_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_work_order_with_http_info(save_custom_field)

```ruby
begin
  # Update a workorder custom fields (BETA)
  data, status_code, headers = api_instance.update_work_order_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order_with_http_info: #{e}"
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


## update_work_order_task

> <Task> update_work_order_task(work_order_id, task_id, save_work_order_task)

Update a task in workOrder

Update an existing workOrder task.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">WORK ORDERS</span> - <code>Write</code> 

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

api_instance = Propertyware::WorkOrdersApi.new
work_order_id = 789 # Integer | Work Order ID
task_id = 789 # Integer | Task ID
save_work_order_task = Propertyware::SaveWorkOrderTask.new({description: 'description_example'}) # SaveWorkOrderTask | saveWorkOrderTask

begin
  # Update a task in workOrder
  result = api_instance.update_work_order_task(work_order_id, task_id, save_work_order_task)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order_task: #{e}"
end
```

#### Using the update_work_order_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> update_work_order_task_with_http_info(work_order_id, task_id, save_work_order_task)

```ruby
begin
  # Update a task in workOrder
  data, status_code, headers = api_instance.update_work_order_task_with_http_info(work_order_id, task_id, save_work_order_task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue Propertyware::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** | Work Order ID |  |
| **task_id** | **Integer** | Task ID |  |
| **save_work_order_task** | [**SaveWorkOrderTask**](SaveWorkOrderTask.md) | saveWorkOrderTask |  |

### Return type

[**Task**](Task.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

