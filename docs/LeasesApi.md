# Propertyware::LeasesApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_comment_to_lease_conversation**](LeasesApi.md#add_comment_to_lease_conversation) | **POST** /leases/{leaseID}/conversations/{conversationID}/comments | Add comment to a lease conversation |
| [**create_journal_entry**](LeasesApi.md#create_journal_entry) | **POST** /leases/journalentries | Create a lease journal entry (BETA) |
| [**create_lease**](LeasesApi.md#create_lease) | **POST** /leases | Create a lease |
| [**create_lease_adjustment**](LeasesApi.md#create_lease_adjustment) | **POST** /leases/adjustments | Create a lease adjustment (BETA) |
| [**create_lease_auto_charges**](LeasesApi.md#create_lease_auto_charges) | **POST** /leases/autocharges | Create lease auto charges (BETA) |
| [**create_lease_charge**](LeasesApi.md#create_lease_charge) | **POST** /leases/charges | Create a lease charge (BETA) |
| [**create_lease_charges**](LeasesApi.md#create_lease_charges) | **POST** /leases/charges/bulk | Create lease charges in bulk (BETA) |
| [**create_lease_conversation**](LeasesApi.md#create_lease_conversation) | **POST** /leases/{leaseID}/conversations | Create a lease conversation |
| [**create_lease_discount**](LeasesApi.md#create_lease_discount) | **POST** /leases/discounts | Create a lease discount (BETA) |
| [**create_lease_payment**](LeasesApi.md#create_lease_payment) | **POST** /leases/payments | Create a lease payment (BETA) |
| [**create_lease_refund**](LeasesApi.md#create_lease_refund) | **POST** /leases/refunds | Create a lease refund (BETA) |
| [**delete_lease**](LeasesApi.md#delete_lease) | **DELETE** /leases/{leaseID} | Delete a lease (BETA) |
| [**delete_lease_charge**](LeasesApi.md#delete_lease_charge) | **DELETE** /leases/charges/{chargeID} | Delete a lease charge (BETA) |
| [**delete_lease_conversation**](LeasesApi.md#delete_lease_conversation) | **DELETE** /leases/{leaseID}/conversations/{conversationID} | Delete a lease conversation (BETA) |
| [**get_all_lease_statuses**](LeasesApi.md#get_all_lease_statuses) | **GET** /leases/statuses | Retrieve all lease statuses (BETA) |
| [**get_lease**](LeasesApi.md#get_lease) | **GET** /leases/{leaseId} | Retrieve a lease |
| [**get_lease_adjustments**](LeasesApi.md#get_lease_adjustments) | **GET** /leases/adjustments | Retrieve all the adjustments |
| [**get_lease_auto_charges**](LeasesApi.md#get_lease_auto_charges) | **GET** /leases/autocharges | Retrieve all lease auto charges (New) |
| [**get_lease_auto_charges_using_get1**](LeasesApi.md#get_lease_auto_charges_using_get1) | **GET** /leases/{leaseId}/autocharges | Retrieve all lease auto charges |
| [**get_lease_auto_e_payments**](LeasesApi.md#get_lease_auto_e_payments) | **GET** /leases/{leaseId}/autoepayments | Retrieve all lease auto ePayments (BETA) |
| [**get_lease_auto_journal_entries**](LeasesApi.md#get_lease_auto_journal_entries) | **GET** /leases/{leaseId}/autojournalentries | Retrieve all lease auto journal entries (BETA) |
| [**get_lease_charges**](LeasesApi.md#get_lease_charges) | **GET** /leases/charges | Retrieve all the lease charges |
| [**get_lease_contacts**](LeasesApi.md#get_lease_contacts) | **GET** /leases/{leaseId}/contacts | Retrieve all lease contacts |
| [**get_lease_conversation**](LeasesApi.md#get_lease_conversation) | **GET** /leases/{leaseID}/conversations/{conversationID} | Retrieve a lease conversation |
| [**get_lease_conversations**](LeasesApi.md#get_lease_conversations) | **GET** /leases/{leaseID}/conversations | Retrieve all lease conversations |
| [**get_lease_credit_memos**](LeasesApi.md#get_lease_credit_memos) | **GET** /leases/creditmemos | Retrieve all the credit memos |
| [**get_lease_custom_fields**](LeasesApi.md#get_lease_custom_fields) | **GET** /leases/{leaseId}/customfields | Retrieve all lease custom fields |
| [**get_lease_discounts**](LeasesApi.md#get_lease_discounts) | **GET** /leases/discounts | Retrieve all the lease discounts |
| [**get_lease_documents**](LeasesApi.md#get_lease_documents) | **GET** /leases/{leaseId}/document | Retrieve all lease documents |
| [**get_lease_journal_entry**](LeasesApi.md#get_lease_journal_entry) | **GET** /leases/journalentries/{leaseID} | Retrieve all lease journal entries  |
| [**get_lease_journal_entry_using_get1**](LeasesApi.md#get_lease_journal_entry_using_get1) | **GET** /leases/journalentries | Retrieve all lease journal entries (New) |
| [**get_lease_late_fee**](LeasesApi.md#get_lease_late_fee) | **GET** /leases/{leaseId}/latefeerule | Retrieve the lease late fee rule |
| [**get_lease_notes**](LeasesApi.md#get_lease_notes) | **GET** /leases/{leaseId}/notes | Retrieve all lease notes |
| [**get_lease_payments**](LeasesApi.md#get_lease_payments) | **GET** /leases/payments | Retrieve all the lease payments |
| [**get_lease_refunds**](LeasesApi.md#get_lease_refunds) | **GET** /leases/refunds | Retrieve all the tenant refunds |
| [**get_lease_work_orders**](LeasesApi.md#get_lease_work_orders) | **GET** /leases/{leaseId}/workorders | Retrieve all lease work orders |
| [**get_leases**](LeasesApi.md#get_leases) | **GET** /leases | Retrieve all leases |
| [**update_lease**](LeasesApi.md#update_lease) | **PUT** /leases/customfields | Update a lease custom fields (BETA) |
| [**update_lease_adjustment**](LeasesApi.md#update_lease_adjustment) | **PUT** /leases/adjustments/{adjustmentID} | Update a lease adjustment (BETA) |
| [**update_lease_charge**](LeasesApi.md#update_lease_charge) | **PUT** /leases/charges/{chargeID} | Update a lease charge (BETA) |
| [**update_lease_discount**](LeasesApi.md#update_lease_discount) | **PUT** /leases/discounts/{discountID} | Updates a lease Discount (BETA) |
| [**update_lease_journal_entry**](LeasesApi.md#update_lease_journal_entry) | **PUT** /leases/journalentries/{journalentryID} | Update a lease journal entry (BETA) |
| [**update_lease_payment**](LeasesApi.md#update_lease_payment) | **PUT** /leases/payments/{entityID} | Update a lease payment (BETA) |
| [**update_lease_refund**](LeasesApi.md#update_lease_refund) | **PUT** /leases/refunds/{refundID} | Update a lease refund (BETA) |
| [**update_lease_using_put1**](LeasesApi.md#update_lease_using_put1) | **PUT** /leases/{leaseId} | Update a lease |


## add_comment_to_lease_conversation

> <Comment> add_comment_to_lease_conversation(lease_id, conversation_id, save_comment)

Add comment to a lease conversation

Adds comment to a lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
conversation_id = 789 # Integer | Conversation ID
save_comment = Propertyware::SaveComment.new({text: 'text_example'}) # SaveComment | saveComment

begin
  # Add comment to a lease conversation
  result = api_instance.add_comment_to_lease_conversation(lease_id, conversation_id, save_comment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->add_comment_to_lease_conversation: #{e}"
end
```

#### Using the add_comment_to_lease_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Comment>, Integer, Hash)> add_comment_to_lease_conversation_with_http_info(lease_id, conversation_id, save_comment)

```ruby
begin
  # Add comment to a lease conversation
  data, status_code, headers = api_instance.add_comment_to_lease_conversation_with_http_info(lease_id, conversation_id, save_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Comment>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->add_comment_to_lease_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |
| **save_comment** | [**SaveComment**](SaveComment.md) | saveComment |  |

### Return type

[**Comment**](Comment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_journal_entry

> <JournalEntry> create_journal_entry(save_lease_journal_entry)

Create a lease journal entry (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease journal entry.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_lease_journal_entry = Propertyware::SaveLeaseJournalEntry.new({comments: 'comments_example', date: Date.today, lease_id: 3.56}) # SaveLeaseJournalEntry | saveLeaseJournalEntry

begin
  # Create a lease journal entry (BETA)
  result = api_instance.create_journal_entry(save_lease_journal_entry)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_journal_entry: #{e}"
end
```

#### Using the create_journal_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JournalEntry>, Integer, Hash)> create_journal_entry_with_http_info(save_lease_journal_entry)

```ruby
begin
  # Create a lease journal entry (BETA)
  data, status_code, headers = api_instance.create_journal_entry_with_http_info(save_lease_journal_entry)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JournalEntry>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_journal_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_lease_journal_entry** | [**SaveLeaseJournalEntry**](SaveLeaseJournalEntry.md) | saveLeaseJournalEntry |  |

### Return type

[**JournalEntry**](JournalEntry.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease

> <Lease> create_lease(save_lease)

Create a lease

Creates a new lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_lease = Propertyware::SaveLease.new({end_date: Date.today, move_in_date: Date.today, primary_contact_id: 3.56, start_date: Date.today, tenant_ids: [3.56], unit_id: 3.56}) # SaveLease | saveLease

begin
  # Create a lease
  result = api_instance.create_lease(save_lease)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease: #{e}"
end
```

#### Using the create_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lease>, Integer, Hash)> create_lease_with_http_info(save_lease)

```ruby
begin
  # Create a lease
  data, status_code, headers = api_instance.create_lease_with_http_info(save_lease)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lease>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_lease** | [**SaveLease**](SaveLease.md) | saveLease |  |

### Return type

[**Lease**](Lease.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_adjustment

> <Adjustment> create_lease_adjustment(save_adjustment)

Create a lease adjustment (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease adjustment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_adjustment = Propertyware::SaveAdjustment.new({amount: 3.56, lease_id: 3.56}) # SaveAdjustment | saveAdjustment

begin
  # Create a lease adjustment (BETA)
  result = api_instance.create_lease_adjustment(save_adjustment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_adjustment: #{e}"
end
```

#### Using the create_lease_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Adjustment>, Integer, Hash)> create_lease_adjustment_with_http_info(save_adjustment)

```ruby
begin
  # Create a lease adjustment (BETA)
  data, status_code, headers = api_instance.create_lease_adjustment_with_http_info(save_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Adjustment>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_adjustment** | [**SaveAdjustment**](SaveAdjustment.md) | saveAdjustment |  |

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_auto_charges

> <Array<Charge>> create_lease_auto_charges(auto_charge)

Create lease auto charges (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates lease auto charges.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
auto_charge = Propertyware::AutoCharge.new({charges: [Propertyware::SaveAutoCharge.new({amount: 3.56, due_day: 37, frequency: 'WEEKLY', gl_account_id: 3.56, start_date: Date.today})], lease_id: 3.56}) # AutoCharge | autoCharge

begin
  # Create lease auto charges (BETA)
  result = api_instance.create_lease_auto_charges(auto_charge)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_auto_charges: #{e}"
end
```

#### Using the create_lease_auto_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Charge>>, Integer, Hash)> create_lease_auto_charges_with_http_info(auto_charge)

```ruby
begin
  # Create lease auto charges (BETA)
  data, status_code, headers = api_instance.create_lease_auto_charges_with_http_info(auto_charge)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Charge>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_auto_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_charge** | [**AutoCharge**](AutoCharge.md) | autoCharge |  |

### Return type

[**Array&lt;Charge&gt;**](Charge.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_charge

> <ChargeTx> create_lease_charge(save_charge)

Create a lease charge (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease charge.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_charge = Propertyware::SaveCharge.new({amount: 3.56, date: Date.today, gl_account_id: 3.56, lease_id: 3.56}) # SaveCharge | saveCharge

begin
  # Create a lease charge (BETA)
  result = api_instance.create_lease_charge(save_charge)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_charge: #{e}"
end
```

#### Using the create_lease_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeTx>, Integer, Hash)> create_lease_charge_with_http_info(save_charge)

```ruby
begin
  # Create a lease charge (BETA)
  data, status_code, headers = api_instance.create_lease_charge_with_http_info(save_charge)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeTx>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_charge** | [**SaveCharge**](SaveCharge.md) | saveCharge |  |

### Return type

[**ChargeTx**](ChargeTx.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_charges

> <Array<RESTAPIBulkSuccessResponse>> create_lease_charges(save_charge)

Create lease charges in bulk (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates lease charges in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_charge = [Propertyware::SaveCharge.new({amount: 3.56, date: Date.today, gl_account_id: 3.56, lease_id: 3.56})] # Array<SaveCharge> | saveCharge

begin
  # Create lease charges in bulk (BETA)
  result = api_instance.create_lease_charges(save_charge)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_charges: #{e}"
end
```

#### Using the create_lease_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_lease_charges_with_http_info(save_charge)

```ruby
begin
  # Create lease charges in bulk (BETA)
  data, status_code, headers = api_instance.create_lease_charges_with_http_info(save_charge)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_charge** | [**Array&lt;SaveCharge&gt;**](SaveCharge.md) | saveCharge |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_conversation

> <Conversation> create_lease_conversation(lease_id, save_conversation)

Create a lease conversation

Creates a specific lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
save_conversation = Propertyware::SaveConversation.new({text: 'text_example', type: 'MANAGEMENT_TEAM'}) # SaveConversation | saveConversation

begin
  # Create a lease conversation
  result = api_instance.create_lease_conversation(lease_id, save_conversation)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_conversation: #{e}"
end
```

#### Using the create_lease_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> create_lease_conversation_with_http_info(lease_id, save_conversation)

```ruby
begin
  # Create a lease conversation
  data, status_code, headers = api_instance.create_lease_conversation_with_http_info(lease_id, save_conversation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **save_conversation** | [**SaveConversation**](SaveConversation.md) | saveConversation |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_discount

> <Discount> create_lease_discount(save_discount)

Create a lease discount (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease discount.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_discount = Propertyware::SaveDiscount.new({amount: 3.56, date: Date.today, discount_account_id: 3.56, lease_id: 3.56}) # SaveDiscount | saveDiscount

begin
  # Create a lease discount (BETA)
  result = api_instance.create_lease_discount(save_discount)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_discount: #{e}"
end
```

#### Using the create_lease_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Discount>, Integer, Hash)> create_lease_discount_with_http_info(save_discount)

```ruby
begin
  # Create a lease discount (BETA)
  data, status_code, headers = api_instance.create_lease_discount_with_http_info(save_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Discount>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_discount** | [**SaveDiscount**](SaveDiscount.md) | saveDiscount |  |

### Return type

[**Discount**](Discount.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_payment

> <Payment> create_lease_payment(save_payment)

Create a lease payment (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease payment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_payment = Propertyware::SavePayment.new({amount: 3.56, contact_id: 3.56, date: Date.today, deposit_date: Date.today, destination_account_id: 3.56, lease_id: 3.56, payment_type: 'CHECK', ref_no: 'ref_no_example'}) # SavePayment | savePayment

begin
  # Create a lease payment (BETA)
  result = api_instance.create_lease_payment(save_payment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_payment: #{e}"
end
```

#### Using the create_lease_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> create_lease_payment_with_http_info(save_payment)

```ruby
begin
  # Create a lease payment (BETA)
  data, status_code, headers = api_instance.create_lease_payment_with_http_info(save_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_payment** | [**SavePayment**](SavePayment.md) | savePayment |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_refund

> <Refund> create_lease_refund(save_refund)

Create a lease refund (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease refund.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_refund = Propertyware::SaveRefund.new({amount: 3.56, date: Date.today, destination_account_id: 3.56, gl_account_id: 3.56, lease_id: 3.56}) # SaveRefund | saveRefund

begin
  # Create a lease refund (BETA)
  result = api_instance.create_lease_refund(save_refund)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_refund: #{e}"
end
```

#### Using the create_lease_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> create_lease_refund_with_http_info(save_refund)

```ruby
begin
  # Create a lease refund (BETA)
  data, status_code, headers = api_instance.create_lease_refund_with_http_info(save_refund)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->create_lease_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_refund** | [**SaveRefund**](SaveRefund.md) | saveRefund |  |

### Return type

[**Refund**](Refund.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_lease

> <ResponseEntity> delete_lease(lease_id)

Delete a lease (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a lease<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Delete</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Delete a lease (BETA)
  result = api_instance.delete_lease(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->delete_lease: #{e}"
end
```

#### Using the delete_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_lease_with_http_info(lease_id)

```ruby
begin
  # Delete a lease (BETA)
  data, status_code, headers = api_instance.delete_lease_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->delete_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_lease_charge

> <ResponseEntity> delete_lease_charge(charge_id)

Delete a lease charge (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific lease charge.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Delete</code> 

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

api_instance = Propertyware::LeasesApi.new
charge_id = 789 # Integer | Charge ID

begin
  # Delete a lease charge (BETA)
  result = api_instance.delete_lease_charge(charge_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->delete_lease_charge: #{e}"
end
```

#### Using the delete_lease_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_lease_charge_with_http_info(charge_id)

```ruby
begin
  # Delete a lease charge (BETA)
  data, status_code, headers = api_instance.delete_lease_charge_with_http_info(charge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->delete_lease_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_id** | **Integer** | Charge ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_lease_conversation

> <ResponseEntity> delete_lease_conversation(lease_id, conversation_id)

Delete a lease conversation (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Delete</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Delete a lease conversation (BETA)
  result = api_instance.delete_lease_conversation(lease_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->delete_lease_conversation: #{e}"
end
```

#### Using the delete_lease_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_lease_conversation_with_http_info(lease_id, conversation_id)

```ruby
begin
  # Delete a lease conversation (BETA)
  data, status_code, headers = api_instance.delete_lease_conversation_with_http_info(lease_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->delete_lease_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lease_statuses

> <Array<LeaseStatus>> get_all_lease_statuses

Retrieve all lease statuses (BETA)

<p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves a list of all lease statuses<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new

begin
  # Retrieve all lease statuses (BETA)
  result = api_instance.get_all_lease_statuses
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_statuses: #{e}"
end
```

#### Using the get_all_lease_statuses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseStatus>>, Integer, Hash)> get_all_lease_statuses_with_http_info

```ruby
begin
  # Retrieve all lease statuses (BETA)
  data, status_code, headers = api_instance.get_all_lease_statuses_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseStatus>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_statuses_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LeaseStatus&gt;**](LeaseStatus.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease

> <Lease> get_lease(lease_id, opts)

Retrieve a lease

Retrieves a specific lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
opts = {
  include_custom_fields: true, # Boolean | includeCustomFields
  include_other_balances: true # Boolean | includeOtherBalances
}

begin
  # Retrieve a lease
  result = api_instance.get_lease(lease_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease: #{e}"
end
```

#### Using the get_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lease>, Integer, Hash)> get_lease_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve a lease
  data, status_code, headers = api_instance.get_lease_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lease>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |
| **include_other_balances** | **Boolean** | includeOtherBalances | [optional][default to false] |

### Return type

[**Lease**](Lease.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_adjustments

> <Array<Adjustment>> get_lease_adjustments(opts)

Retrieve all the adjustments

Retrieves a list of adjustments.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results associated with a specific portfolio.
  lease_id: 789, # Integer | Filters results with Lease ID.
  status: 'status_example', # String | Filters results to with Lease Status.
  gl_account_id: 789 # Integer | Filters results with GLAccount ID.
}

begin
  # Retrieve all the adjustments
  result = api_instance.get_lease_adjustments(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_adjustments: #{e}"
end
```

#### Using the get_lease_adjustments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Adjustment>>, Integer, Hash)> get_lease_adjustments_with_http_info(opts)

```ruby
begin
  # Retrieve all the adjustments
  data, status_code, headers = api_instance.get_lease_adjustments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Adjustment>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_adjustments_with_http_info: #{e}"
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
| **post_date_start** | **Date** | Filters results to any transaction with a start date on or after the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with a start date on or prior to the date specified. | [optional] |
| **portfolio_id** | **Integer** | Filters results associated with a specific portfolio. | [optional] |
| **lease_id** | **Integer** | Filters results with Lease ID. | [optional] |
| **status** | **String** | Filters results to with Lease Status. | [optional] |
| **gl_account_id** | **Integer** | Filters results with GLAccount ID. | [optional] |

### Return type

[**Array&lt;Adjustment&gt;**](Adjustment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_auto_charges

> <Array<Charge>> get_lease_auto_charges(opts)

Retrieve all lease auto charges (New)

Retrieves all the auto charges of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  lease_id: 789 # Integer | Filters results with Lease ID.
}

begin
  # Retrieve all lease auto charges (New)
  result = api_instance.get_lease_auto_charges(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_charges: #{e}"
end
```

#### Using the get_lease_auto_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Charge>>, Integer, Hash)> get_lease_auto_charges_with_http_info(opts)

```ruby
begin
  # Retrieve all lease auto charges (New)
  data, status_code, headers = api_instance.get_lease_auto_charges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Charge>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_charges_with_http_info: #{e}"
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
| **lease_id** | **Integer** | Filters results with Lease ID. | [optional] |

### Return type

[**Array&lt;Charge&gt;**](Charge.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_auto_charges_using_get1

> <Array<Charge>> get_lease_auto_charges_using_get1(lease_id)

Retrieve all lease auto charges

Retrieves all the auto charges of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease auto charges
  result = api_instance.get_lease_auto_charges_using_get1(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_charges_using_get1: #{e}"
end
```

#### Using the get_lease_auto_charges_using_get1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Charge>>, Integer, Hash)> get_lease_auto_charges_using_get1_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease auto charges
  data, status_code, headers = api_instance.get_lease_auto_charges_using_get1_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Charge>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_charges_using_get1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**Array&lt;Charge&gt;**](Charge.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_auto_e_payments

> <AutoPayment> get_lease_auto_e_payments(lease_id)

Retrieve all lease auto ePayments (BETA)

<p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves all the auto ePayments of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease auto ePayments (BETA)
  result = api_instance.get_lease_auto_e_payments(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_e_payments: #{e}"
end
```

#### Using the get_lease_auto_e_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutoPayment>, Integer, Hash)> get_lease_auto_e_payments_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease auto ePayments (BETA)
  data, status_code, headers = api_instance.get_lease_auto_e_payments_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutoPayment>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_e_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**AutoPayment**](AutoPayment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_auto_journal_entries

> <AutoJournalEntry> get_lease_auto_journal_entries(lease_id)

Retrieve all lease auto journal entries (BETA)

<p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves all the auto journal entries of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease auto journal entries (BETA)
  result = api_instance.get_lease_auto_journal_entries(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_journal_entries: #{e}"
end
```

#### Using the get_lease_auto_journal_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutoJournalEntry>, Integer, Hash)> get_lease_auto_journal_entries_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease auto journal entries (BETA)
  data, status_code, headers = api_instance.get_lease_auto_journal_entries_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutoJournalEntry>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_auto_journal_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**AutoJournalEntry**](AutoJournalEntry.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_charges

> <Array<ChargeTx>> get_lease_charges(opts)

Retrieve all the lease charges

Retrieves a list of lease charges.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results associated with a specific portfolio.
  lease_id: 789, # Integer | Filters results with Lease ID.
  status: 'status_example', # String | Filters results to with Lease Status.
  gl_account_id: 789 # Integer | Filters results with GLAccount ID.
}

begin
  # Retrieve all the lease charges
  result = api_instance.get_lease_charges(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_charges: #{e}"
end
```

#### Using the get_lease_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChargeTx>>, Integer, Hash)> get_lease_charges_with_http_info(opts)

```ruby
begin
  # Retrieve all the lease charges
  data, status_code, headers = api_instance.get_lease_charges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChargeTx>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_charges_with_http_info: #{e}"
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
| **post_date_start** | **Date** | Filters results to any transaction with a start date on or after the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with a start date on or prior to the date specified. | [optional] |
| **portfolio_id** | **Integer** | Filters results associated with a specific portfolio. | [optional] |
| **lease_id** | **Integer** | Filters results with Lease ID. | [optional] |
| **status** | **String** | Filters results to with Lease Status. | [optional] |
| **gl_account_id** | **Integer** | Filters results with GLAccount ID. | [optional] |

### Return type

[**Array&lt;ChargeTx&gt;**](ChargeTx.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_contacts

> <Array<ContactExtension>> get_lease_contacts(lease_id, opts)

Retrieve all lease contacts

Retrieves all the contacts of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve all lease contacts
  result = api_instance.get_lease_contacts(lease_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_contacts: #{e}"
end
```

#### Using the get_lease_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ContactExtension>>, Integer, Hash)> get_lease_contacts_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all lease contacts
  data, status_code, headers = api_instance.get_lease_contacts_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ContactExtension>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |

### Return type

[**Array&lt;ContactExtension&gt;**](ContactExtension.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_conversation

> <Conversation> get_lease_conversation(lease_id, conversation_id)

Retrieve a lease conversation

Retrieves a specific lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
conversation_id = 789 # Integer | Conversation ID

begin
  # Retrieve a lease conversation
  result = api_instance.get_lease_conversation(lease_id, conversation_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_conversation: #{e}"
end
```

#### Using the get_lease_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Conversation>, Integer, Hash)> get_lease_conversation_with_http_info(lease_id, conversation_id)

```ruby
begin
  # Retrieve a lease conversation
  data, status_code, headers = api_instance.get_lease_conversation_with_http_info(lease_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Conversation>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **conversation_id** | **Integer** | Conversation ID |  |

### Return type

[**Conversation**](Conversation.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_conversations

> <Array<Conversation>> get_lease_conversations(lease_id, opts)

Retrieve all lease conversations

Retrieves all the conversations of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  type: 'MANAGEMENT_TEAM' # String | Filters results by the conversation type.
}

begin
  # Retrieve all lease conversations
  result = api_instance.get_lease_conversations(lease_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_conversations: #{e}"
end
```

#### Using the get_lease_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Conversation>>, Integer, Hash)> get_lease_conversations_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all lease conversations
  data, status_code, headers = api_instance.get_lease_conversations_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Conversation>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
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


## get_lease_credit_memos

> <Array<CreditMemo>> get_lease_credit_memos(opts)

Retrieve all the credit memos

Retrieves a list of credit memos.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results associated with a specific portfolio.
  lease_id: 789, # Integer | Filters results with Lease ID.
  status: 'status_example', # String | Filters results to with Lease Status.
  gl_account_id: 789 # Integer | Filters results with GLAccount ID.
}

begin
  # Retrieve all the credit memos
  result = api_instance.get_lease_credit_memos(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_credit_memos: #{e}"
end
```

#### Using the get_lease_credit_memos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CreditMemo>>, Integer, Hash)> get_lease_credit_memos_with_http_info(opts)

```ruby
begin
  # Retrieve all the credit memos
  data, status_code, headers = api_instance.get_lease_credit_memos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CreditMemo>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_credit_memos_with_http_info: #{e}"
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
| **post_date_start** | **Date** | Filters results to any transaction with a start date on or after the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with a start date on or prior to the date specified. | [optional] |
| **portfolio_id** | **Integer** | Filters results associated with a specific portfolio. | [optional] |
| **lease_id** | **Integer** | Filters results with Lease ID. | [optional] |
| **status** | **String** | Filters results to with Lease Status. | [optional] |
| **gl_account_id** | **Integer** | Filters results with GLAccount ID. | [optional] |

### Return type

[**Array&lt;CreditMemo&gt;**](CreditMemo.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_custom_fields

> <Array<CustomField>> get_lease_custom_fields(lease_id)

Retrieve all lease custom fields

Retrieves all the custom fields of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease custom fields
  result = api_instance.get_lease_custom_fields(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_custom_fields: #{e}"
end
```

#### Using the get_lease_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CustomField>>, Integer, Hash)> get_lease_custom_fields_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease custom fields
  data, status_code, headers = api_instance.get_lease_custom_fields_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CustomField>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**Array&lt;CustomField&gt;**](CustomField.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_discounts

> <Array<Discount>> get_lease_discounts(opts)

Retrieve all the lease discounts

Retrieves a list of lease discounts<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  lease_id: 789, # Integer | Filters results to any LeaseID.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any discount with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20') # Date | Filters results to any discount with a start date on or prior to the date specified.
}

begin
  # Retrieve all the lease discounts
  result = api_instance.get_lease_discounts(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_discounts: #{e}"
end
```

#### Using the get_lease_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Discount>>, Integer, Hash)> get_lease_discounts_with_http_info(opts)

```ruby
begin
  # Retrieve all the lease discounts
  data, status_code, headers = api_instance.get_lease_discounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Discount>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_discounts_with_http_info: #{e}"
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
| **lease_id** | **Integer** | Filters results to any LeaseID. | [optional] |
| **post_date_start** | **Date** | Filters results to any discount with a start date on or after the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any discount with a start date on or prior to the date specified. | [optional] |

### Return type

[**Array&lt;Discount&gt;**](Discount.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_documents

> <Array<Document>> get_lease_documents(lease_id)

Retrieve all lease documents

Retrieves all the documents of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease documents
  result = api_instance.get_lease_documents(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_documents: #{e}"
end
```

#### Using the get_lease_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Document>>, Integer, Hash)> get_lease_documents_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease documents
  data, status_code, headers = api_instance.get_lease_documents_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Document>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**Array&lt;Document&gt;**](Document.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_journal_entry

> <JournalEntry> get_lease_journal_entry(lease_id, opts)

Retrieve all lease journal entries 

Retrieves a specific lease journal entries.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  lease_id2: 789, # Integer | Filters results to transactions associated with a specific lease.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with post date on or after to the date specified.
  post_date_end: Date.parse('2013-10-20') # Date | Filters results to any transaction with post date on or prior to the date specified.
}

begin
  # Retrieve all lease journal entries 
  result = api_instance.get_lease_journal_entry(lease_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_journal_entry: #{e}"
end
```

#### Using the get_lease_journal_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JournalEntry>, Integer, Hash)> get_lease_journal_entry_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all lease journal entries 
  data, status_code, headers = api_instance.get_lease_journal_entry_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JournalEntry>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_journal_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. | [optional][default to 100] |
| **last_modified_date_time_start** | **Time** | Filters results to any item modified on or after the date time specified.  | [optional] |
| **last_modified_date_time_end** | **Time** | Filters results to any item modified on or prior to the date time specified.  | [optional] |
| **orderby** | **String** | Indicates the field(s) and direction to sort the results in the response. | [optional] |
| **lease_id2** | **Integer** | Filters results to transactions associated with a specific lease. | [optional] |
| **post_date_start** | **Date** | Filters results to any transaction with post date on or after to the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with post date on or prior to the date specified. | [optional] |

### Return type

[**JournalEntry**](JournalEntry.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_journal_entry_using_get1

> <JournalEntry> get_lease_journal_entry_using_get1(opts)

Retrieve all lease journal entries (New)

Retrieves a list of lease journal entries.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  lease_id: 789, # Integer | Filters results to transactions associated with a specific lease.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with post date on or after to the date specified.
  post_date_end: Date.parse('2013-10-20') # Date | Filters results to any transaction with post date on or prior to the date specified.
}

begin
  # Retrieve all lease journal entries (New)
  result = api_instance.get_lease_journal_entry_using_get1(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_journal_entry_using_get1: #{e}"
end
```

#### Using the get_lease_journal_entry_using_get1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JournalEntry>, Integer, Hash)> get_lease_journal_entry_using_get1_with_http_info(opts)

```ruby
begin
  # Retrieve all lease journal entries (New)
  data, status_code, headers = api_instance.get_lease_journal_entry_using_get1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JournalEntry>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_journal_entry_using_get1_with_http_info: #{e}"
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
| **lease_id** | **Integer** | Filters results to transactions associated with a specific lease. | [optional] |
| **post_date_start** | **Date** | Filters results to any transaction with post date on or after to the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with post date on or prior to the date specified. | [optional] |

### Return type

[**JournalEntry**](JournalEntry.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_late_fee

> <LateFeeRule> get_lease_late_fee(lease_id)

Retrieve the lease late fee rule

Retrieves the lease late fee rule.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve the lease late fee rule
  result = api_instance.get_lease_late_fee(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_late_fee: #{e}"
end
```

#### Using the get_lease_late_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LateFeeRule>, Integer, Hash)> get_lease_late_fee_with_http_info(lease_id)

```ruby
begin
  # Retrieve the lease late fee rule
  data, status_code, headers = api_instance.get_lease_late_fee_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LateFeeRule>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_late_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**LateFeeRule**](LateFeeRule.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_notes

> <Array<Note>> get_lease_notes(lease_id)

Retrieve all lease notes

Retrieves all the notes of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease notes
  result = api_instance.get_lease_notes(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_notes: #{e}"
end
```

#### Using the get_lease_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Note>>, Integer, Hash)> get_lease_notes_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease notes
  data, status_code, headers = api_instance.get_lease_notes_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Note>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**Array&lt;Note&gt;**](Note.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_payments

> <Array<Payment>> get_lease_payments(opts)

Retrieve all the lease payments

Retrieves a list of lease payments.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results associated with a specific portfolio.
  lease_id: 789, # Integer | Filters results with Lease ID.
  status: 'status_example', # String | Filters results to with Lease Status.
  gl_account_id: 789 # Integer | Filters results with GLAccount ID.
}

begin
  # Retrieve all the lease payments
  result = api_instance.get_lease_payments(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_payments: #{e}"
end
```

#### Using the get_lease_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Payment>>, Integer, Hash)> get_lease_payments_with_http_info(opts)

```ruby
begin
  # Retrieve all the lease payments
  data, status_code, headers = api_instance.get_lease_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Payment>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_payments_with_http_info: #{e}"
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
| **post_date_start** | **Date** | Filters results to any transaction with a start date on or after the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with a start date on or prior to the date specified. | [optional] |
| **portfolio_id** | **Integer** | Filters results associated with a specific portfolio. | [optional] |
| **lease_id** | **Integer** | Filters results with Lease ID. | [optional] |
| **status** | **String** | Filters results to with Lease Status. | [optional] |
| **gl_account_id** | **Integer** | Filters results with GLAccount ID. | [optional] |

### Return type

[**Array&lt;Payment&gt;**](Payment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_refunds

> <Array<Refund>> get_lease_refunds(opts)

Retrieve all the tenant refunds

Retrieves a list of tenant refunds.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results associated with a specific portfolio.
  lease_id: 789, # Integer | Filters results with Lease ID.
  status: 'status_example', # String | Filters results to with Lease Status.
  gl_account_id: 789 # Integer | Filters results with GLAccount ID.
}

begin
  # Retrieve all the tenant refunds
  result = api_instance.get_lease_refunds(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_refunds: #{e}"
end
```

#### Using the get_lease_refunds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Refund>>, Integer, Hash)> get_lease_refunds_with_http_info(opts)

```ruby
begin
  # Retrieve all the tenant refunds
  data, status_code, headers = api_instance.get_lease_refunds_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Refund>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_refunds_with_http_info: #{e}"
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
| **post_date_start** | **Date** | Filters results to any transaction with a start date on or after the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with a start date on or prior to the date specified. | [optional] |
| **portfolio_id** | **Integer** | Filters results associated with a specific portfolio. | [optional] |
| **lease_id** | **Integer** | Filters results with Lease ID. | [optional] |
| **status** | **String** | Filters results to with Lease Status. | [optional] |
| **gl_account_id** | **Integer** | Filters results with GLAccount ID. | [optional] |

### Return type

[**Array&lt;Refund&gt;**](Refund.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_work_orders

> <Array<WorkOrder>> get_lease_work_orders(lease_id)

Retrieve all lease work orders

Retrieves all the work orders of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID

begin
  # Retrieve all lease work orders
  result = api_instance.get_lease_work_orders(lease_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_work_orders: #{e}"
end
```

#### Using the get_lease_work_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WorkOrder>>, Integer, Hash)> get_lease_work_orders_with_http_info(lease_id)

```ruby
begin
  # Retrieve all lease work orders
  data, status_code, headers = api_instance.get_lease_work_orders_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WorkOrder>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_lease_work_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |

### Return type

[**Array&lt;WorkOrder&gt;**](WorkOrder.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_leases

> <Array<Lease>> get_leases(opts)

Retrieve all leases

Retrieves a list of leases.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>startdate</code>, <code>idnumber</code>, <code>scheduledmoveoutdate</code>, <code>enddate</code>, <code>lastmodifieddatetime</code>, <code>status</code>, <code>moveoutdate</code>, <code>id</code>, <code>moveindate</code>

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

api_instance = Propertyware::LeasesApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  start_date_start: Date.parse('2013-10-20'), # Date | Filters results to any lease with a start date on or after the date specified.
  start_date_end: Date.parse('2013-10-20'), # Date | Filters results to any lease with a start date on or prior to the date specified.
  end_date_start: Date.parse('2013-10-20'), # Date | Filters results to any lease with a end date on or after the date specified.
  end_date_end: Date.parse('2013-10-20'), # Date | Filters results to any lease with a end date on or prior to the date specified.
  move_in_date_start: Date.parse('2013-10-20'), # Date | Filters results to any lease with a move-in date on or after the date specified.
  move_in_date_end: Date.parse('2013-10-20'), # Date | Filters results to any lease with a move-in date on or prior to the date specified.
  schedule_move_out_date_start: Date.parse('2013-10-20'), # Date | Filters results to any lease with a move-out date on or after the date specified.
  schedule_move_out_date_end: Date.parse('2013-10-20'), # Date | Filters results to any lease with a move-out date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results to leases associated with a specific portfolio.
  building_id: 789, # Integer | Filters results to leases associated with a specific building.
  unit_id: 789, # Integer | Filters results to leases associated with a specific unit.
  status: 'status_example', # String | Filters results to inspections with a specific status.
  include_custom_fields: true, # Boolean | includeCustomFields
  include_other_balances: true # Boolean | includeOtherBalances
}

begin
  # Retrieve all leases
  result = api_instance.get_leases(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_leases: #{e}"
end
```

#### Using the get_leases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Lease>>, Integer, Hash)> get_leases_with_http_info(opts)

```ruby
begin
  # Retrieve all leases
  data, status_code, headers = api_instance.get_leases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Lease>>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->get_leases_with_http_info: #{e}"
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
| **start_date_start** | **Date** | Filters results to any lease with a start date on or after the date specified. | [optional] |
| **start_date_end** | **Date** | Filters results to any lease with a start date on or prior to the date specified. | [optional] |
| **end_date_start** | **Date** | Filters results to any lease with a end date on or after the date specified. | [optional] |
| **end_date_end** | **Date** | Filters results to any lease with a end date on or prior to the date specified. | [optional] |
| **move_in_date_start** | **Date** | Filters results to any lease with a move-in date on or after the date specified. | [optional] |
| **move_in_date_end** | **Date** | Filters results to any lease with a move-in date on or prior to the date specified. | [optional] |
| **schedule_move_out_date_start** | **Date** | Filters results to any lease with a move-out date on or after the date specified. | [optional] |
| **schedule_move_out_date_end** | **Date** | Filters results to any lease with a move-out date on or prior to the date specified. | [optional] |
| **portfolio_id** | **Integer** | Filters results to leases associated with a specific portfolio. | [optional] |
| **building_id** | **Integer** | Filters results to leases associated with a specific building. | [optional] |
| **unit_id** | **Integer** | Filters results to leases associated with a specific unit. | [optional] |
| **status** | **String** | Filters results to inspections with a specific status. | [optional] |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to false] |
| **include_other_balances** | **Boolean** | includeOtherBalances | [optional][default to false] |

### Return type

[**Array&lt;Lease&gt;**](Lease.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lease

> <ResponseEntity> update_lease(save_custom_field)

Update a lease custom fields (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing lease custom fields<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
save_custom_field = Propertyware::SaveCustomField.new({entity_id: 3.56, field_set: [Propertyware::CustomFieldSet.new({name: 'name_example', value: 'value_example'})]}) # SaveCustomField | saveCustomField

begin
  # Update a lease custom fields (BETA)
  result = api_instance.update_lease(save_custom_field)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease: #{e}"
end
```

#### Using the update_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> update_lease_with_http_info(save_custom_field)

```ruby
begin
  # Update a lease custom fields (BETA)
  data, status_code, headers = api_instance.update_lease_with_http_info(save_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_with_http_info: #{e}"
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


## update_lease_adjustment

> <Adjustment> update_lease_adjustment(adjustment_id, save_adjustment)

Update a lease adjustment (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an lease adjustment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
adjustment_id = 789 # Integer | Adjustment ID
save_adjustment = Propertyware::SaveAdjustment.new({amount: 3.56, lease_id: 3.56}) # SaveAdjustment | saveAdjustment

begin
  # Update a lease adjustment (BETA)
  result = api_instance.update_lease_adjustment(adjustment_id, save_adjustment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_adjustment: #{e}"
end
```

#### Using the update_lease_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Adjustment>, Integer, Hash)> update_lease_adjustment_with_http_info(adjustment_id, save_adjustment)

```ruby
begin
  # Update a lease adjustment (BETA)
  data, status_code, headers = api_instance.update_lease_adjustment_with_http_info(adjustment_id, save_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Adjustment>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_id** | **Integer** | Adjustment ID |  |
| **save_adjustment** | [**SaveAdjustment**](SaveAdjustment.md) | saveAdjustment |  |

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_charge

> <ChargeTx> update_lease_charge(charge_id, save_charge)

Update a lease charge (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease charge.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
charge_id = 789 # Integer | Charge ID
save_charge = Propertyware::SaveCharge.new({amount: 3.56, date: Date.today, gl_account_id: 3.56, lease_id: 3.56}) # SaveCharge | saveCharge

begin
  # Update a lease charge (BETA)
  result = api_instance.update_lease_charge(charge_id, save_charge)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_charge: #{e}"
end
```

#### Using the update_lease_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeTx>, Integer, Hash)> update_lease_charge_with_http_info(charge_id, save_charge)

```ruby
begin
  # Update a lease charge (BETA)
  data, status_code, headers = api_instance.update_lease_charge_with_http_info(charge_id, save_charge)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeTx>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_id** | **Integer** | Charge ID |  |
| **save_charge** | [**SaveCharge**](SaveCharge.md) | saveCharge |  |

### Return type

[**ChargeTx**](ChargeTx.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_discount

> <Discount> update_lease_discount(discount_id, save_discount)

Updates a lease Discount (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease Discount.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
discount_id = 789 # Integer | Discount ID
save_discount = Propertyware::SaveDiscount.new({amount: 3.56, date: Date.today, discount_account_id: 3.56, lease_id: 3.56}) # SaveDiscount | saveDiscount

begin
  # Updates a lease Discount (BETA)
  result = api_instance.update_lease_discount(discount_id, save_discount)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_discount: #{e}"
end
```

#### Using the update_lease_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Discount>, Integer, Hash)> update_lease_discount_with_http_info(discount_id, save_discount)

```ruby
begin
  # Updates a lease Discount (BETA)
  data, status_code, headers = api_instance.update_lease_discount_with_http_info(discount_id, save_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Discount>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_id** | **Integer** | Discount ID |  |
| **save_discount** | [**SaveDiscount**](SaveDiscount.md) | saveDiscount |  |

### Return type

[**Discount**](Discount.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_journal_entry

> <JournalEntry> update_lease_journal_entry(journalentry_id, update_lease_journal_entry)

Update a lease journal entry (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease journal entry.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
journalentry_id = 789 # Integer | Journal Entry ID
update_lease_journal_entry = Propertyware::UpdateLeaseJournalEntry.new({comments: 'comments_example', date: Date.today, lease_id: 3.56}) # UpdateLeaseJournalEntry | updateLeaseJournalEntry

begin
  # Update a lease journal entry (BETA)
  result = api_instance.update_lease_journal_entry(journalentry_id, update_lease_journal_entry)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_journal_entry: #{e}"
end
```

#### Using the update_lease_journal_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JournalEntry>, Integer, Hash)> update_lease_journal_entry_with_http_info(journalentry_id, update_lease_journal_entry)

```ruby
begin
  # Update a lease journal entry (BETA)
  data, status_code, headers = api_instance.update_lease_journal_entry_with_http_info(journalentry_id, update_lease_journal_entry)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JournalEntry>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_journal_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **journalentry_id** | **Integer** | Journal Entry ID |  |
| **update_lease_journal_entry** | [**UpdateLeaseJournalEntry**](UpdateLeaseJournalEntry.md) | updateLeaseJournalEntry |  |

### Return type

[**JournalEntry**](JournalEntry.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_payment

> <Payment> update_lease_payment(entity_id, save_payment)

Update a lease payment (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease payment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
entity_id = 789 # Integer | Lease Payment ID
save_payment = Propertyware::SavePayment.new({amount: 3.56, contact_id: 3.56, date: Date.today, deposit_date: Date.today, destination_account_id: 3.56, lease_id: 3.56, payment_type: 'CHECK', ref_no: 'ref_no_example'}) # SavePayment | savePayment

begin
  # Update a lease payment (BETA)
  result = api_instance.update_lease_payment(entity_id, save_payment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_payment: #{e}"
end
```

#### Using the update_lease_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> update_lease_payment_with_http_info(entity_id, save_payment)

```ruby
begin
  # Update a lease payment (BETA)
  data, status_code, headers = api_instance.update_lease_payment_with_http_info(entity_id, save_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Lease Payment ID |  |
| **save_payment** | [**SavePayment**](SavePayment.md) | savePayment |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_refund

> <Refund> update_lease_refund(refund_id, save_refund)

Update a lease refund (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Update an lease refund.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
refund_id = 789 # Integer | Refund ID
save_refund = Propertyware::SaveRefund.new({amount: 3.56, date: Date.today, destination_account_id: 3.56, gl_account_id: 3.56, lease_id: 3.56}) # SaveRefund | saveRefund

begin
  # Update a lease refund (BETA)
  result = api_instance.update_lease_refund(refund_id, save_refund)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_refund: #{e}"
end
```

#### Using the update_lease_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> update_lease_refund_with_http_info(refund_id, save_refund)

```ruby
begin
  # Update a lease refund (BETA)
  data, status_code, headers = api_instance.update_lease_refund_with_http_info(refund_id, save_refund)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_id** | **Integer** | Refund ID |  |
| **save_refund** | [**SaveRefund**](SaveRefund.md) | saveRefund |  |

### Return type

[**Refund**](Refund.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_using_put1

> <Lease> update_lease_using_put1(lease_id, save_lease)

Update a lease

Updates an existing lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 

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

api_instance = Propertyware::LeasesApi.new
lease_id = 789 # Integer | Lease ID
save_lease = Propertyware::SaveLease.new({end_date: Date.today, move_in_date: Date.today, primary_contact_id: 3.56, start_date: Date.today, tenant_ids: [3.56], unit_id: 3.56}) # SaveLease | lease

begin
  # Update a lease
  result = api_instance.update_lease_using_put1(lease_id, save_lease)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_using_put1: #{e}"
end
```

#### Using the update_lease_using_put1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lease>, Integer, Hash)> update_lease_using_put1_with_http_info(lease_id, save_lease)

```ruby
begin
  # Update a lease
  data, status_code, headers = api_instance.update_lease_using_put1_with_http_info(lease_id, save_lease)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lease>
rescue Propertyware::ApiError => e
  puts "Error when calling LeasesApi->update_lease_using_put1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease ID |  |
| **save_lease** | [**SaveLease**](SaveLease.md) | lease |  |

### Return type

[**Lease**](Lease.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

