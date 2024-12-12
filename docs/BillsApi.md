# Propertyware::BillsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bill**](BillsApi.md#create_bill) | **POST** /bills | Create a bill |
| [**create_bill_payment**](BillsApi.md#create_bill_payment) | **POST** /bills/payment | Create a Bill Payment (BETA) |
| [**create_bill_payments_using_post1**](BillsApi.md#create_bill_payments_using_post1) | **POST** /bills/payments/bulk | Create bill payments in bulk (BETA) |
| [**create_bills**](BillsApi.md#create_bills) | **POST** /bills/bulk | Create bills in bulk |
| [**create_credit**](BillsApi.md#create_credit) | **POST** /bills/credit | Create a credit |
| [**create_vendor_check**](BillsApi.md#create_vendor_check) | **POST** /bills/vendorchecks | Create a Vendor check (BETA) |
| [**delete_bill**](BillsApi.md#delete_bill) | **DELETE** /bills/{billID} | Delete a Bill (BETA) |
| [**get_bill**](BillsApi.md#get_bill) | **GET** /bills/{billID} | Retrieve a bill |
| [**get_bill_payment**](BillsApi.md#get_bill_payment) | **GET** /bills/payments/{billPaymentID} | Retrieve a bill payment |
| [**get_bill_payments**](BillsApi.md#get_bill_payments) | **GET** /bills/payments | Retrieve all bill payments |
| [**get_bills**](BillsApi.md#get_bills) | **GET** /bills | Retrieve all bills |
| [**get_vendor_checks**](BillsApi.md#get_vendor_checks) | **GET** /bills/vendorchecks | Retrieve all Vendor checks (BETA) |
| [**update_bill**](BillsApi.md#update_bill) | **PUT** /bills/{billId} | Update a Bill |
| [**update_bill_payment**](BillsApi.md#update_bill_payment) | **PUT** /bills/payment/{billPaymentID} | Update a Bill Payment (BETA) |
| [**update_credit**](BillsApi.md#update_credit) | **PUT** /bills/credit/{creditID} | Update a Credit |
| [**update_vendor_check**](BillsApi.md#update_vendor_check) | **PUT** /bills/vendorchecks/{vendorCheckID} | Update a Vendor check (BETA) |


## create_bill

> <Bill> create_bill(save_bill)

Create a bill

Creates a bill.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
save_bill = Propertyware::SaveBill.new({bill_date: Date.today, bill_splits: [Propertyware::SaveBillSplit.new({amount: 3.56, gl_account_id: 3.56, portfolio_id: 3.56})], due_date: Date.today, vendor_id: 3.56}) # SaveBill | saveBill

begin
  # Create a bill
  result = api_instance.create_bill(save_bill)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bill: #{e}"
end
```

#### Using the create_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Bill>, Integer, Hash)> create_bill_with_http_info(save_bill)

```ruby
begin
  # Create a bill
  data, status_code, headers = api_instance.create_bill_with_http_info(save_bill)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Bill>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_bill** | [**SaveBill**](SaveBill.md) | saveBill |  |

### Return type

[**Bill**](Bill.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bill_payment

> <BillPayment> create_bill_payment(save_bill_payment)

Create a Bill Payment (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Create a Bill Payment<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
save_bill_payment = Propertyware::SaveBillPayment.new # SaveBillPayment | saveBillPayment

begin
  # Create a Bill Payment (BETA)
  result = api_instance.create_bill_payment(save_bill_payment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bill_payment: #{e}"
end
```

#### Using the create_bill_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillPayment>, Integer, Hash)> create_bill_payment_with_http_info(save_bill_payment)

```ruby
begin
  # Create a Bill Payment (BETA)
  data, status_code, headers = api_instance.create_bill_payment_with_http_info(save_bill_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillPayment>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bill_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_bill_payment** | [**SaveBillPayment**](SaveBillPayment.md) | saveBillPayment |  |

### Return type

[**BillPayment**](BillPayment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bill_payments_using_post1

> <Array<RESTAPIBulkSuccessResponse>> create_bill_payments_using_post1(save_bill_payment)

Create bill payments in bulk (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates bill payments in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
save_bill_payment = [Propertyware::SaveBillPayment.new] # Array<SaveBillPayment> | saveBillPayment

begin
  # Create bill payments in bulk (BETA)
  result = api_instance.create_bill_payments_using_post1(save_bill_payment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bill_payments_using_post1: #{e}"
end
```

#### Using the create_bill_payments_using_post1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_bill_payments_using_post1_with_http_info(save_bill_payment)

```ruby
begin
  # Create bill payments in bulk (BETA)
  data, status_code, headers = api_instance.create_bill_payments_using_post1_with_http_info(save_bill_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bill_payments_using_post1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_bill_payment** | [**Array&lt;SaveBillPayment&gt;**](SaveBillPayment.md) | saveBillPayment |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bills

> <Array<RESTAPIBulkSuccessResponse>> create_bills(save_bill)

Create bills in bulk

Creates bills in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
save_bill = [Propertyware::SaveBill.new({bill_date: Date.today, bill_splits: [Propertyware::SaveBillSplit.new({amount: 3.56, gl_account_id: 3.56, portfolio_id: 3.56})], due_date: Date.today, vendor_id: 3.56})] # Array<SaveBill> | saveBill

begin
  # Create bills in bulk
  result = api_instance.create_bills(save_bill)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bills: #{e}"
end
```

#### Using the create_bills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_bills_with_http_info(save_bill)

```ruby
begin
  # Create bills in bulk
  data, status_code, headers = api_instance.create_bills_with_http_info(save_bill)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_bills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_bill** | [**Array&lt;SaveBill&gt;**](SaveBill.md) | saveBill |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_credit

> <Bill> create_credit(save_credit)

Create a credit

Creates a credit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
save_credit = Propertyware::SaveCredit.new({bill_date: Date.today, bill_splits: [Propertyware::SaveBillSplit.new({amount: 3.56, gl_account_id: 3.56, portfolio_id: 3.56})], vendor_id: 3.56}) # SaveCredit | saveCredit

begin
  # Create a credit
  result = api_instance.create_credit(save_credit)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_credit: #{e}"
end
```

#### Using the create_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Bill>, Integer, Hash)> create_credit_with_http_info(save_credit)

```ruby
begin
  # Create a credit
  data, status_code, headers = api_instance.create_credit_with_http_info(save_credit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Bill>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_credit** | [**SaveCredit**](SaveCredit.md) | saveCredit |  |

### Return type

[**Bill**](Bill.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vendor_check

> <Check> create_vendor_check(save_check)

Create a Vendor check (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a Vendor check.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
save_check = Propertyware::SaveCheck.new({check_date: Date.today, destination_account_id: 3.56}) # SaveCheck | saveCheck

begin
  # Create a Vendor check (BETA)
  result = api_instance.create_vendor_check(save_check)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_vendor_check: #{e}"
end
```

#### Using the create_vendor_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Check>, Integer, Hash)> create_vendor_check_with_http_info(save_check)

```ruby
begin
  # Create a Vendor check (BETA)
  data, status_code, headers = api_instance.create_vendor_check_with_http_info(save_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Check>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->create_vendor_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_check** | [**SaveCheck**](SaveCheck.md) | saveCheck |  |

### Return type

[**Check**](Check.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_bill

> <ResponseEntity> delete_bill(bill_id)

Delete a Bill (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Delete a Bill.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Delete</code> 

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

api_instance = Propertyware::BillsApi.new
bill_id = 789 # Integer | Bill ID

begin
  # Delete a Bill (BETA)
  result = api_instance.delete_bill(bill_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->delete_bill: #{e}"
end
```

#### Using the delete_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_bill_with_http_info(bill_id)

```ruby
begin
  # Delete a Bill (BETA)
  data, status_code, headers = api_instance.delete_bill_with_http_info(bill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->delete_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** | Bill ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill

> <Bill> get_bill(bill_id)

Retrieve a bill

Retrieves a specific bill.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Read</code> 

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

api_instance = Propertyware::BillsApi.new
bill_id = 789 # Integer | Bill ID

begin
  # Retrieve a bill
  result = api_instance.get_bill(bill_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bill: #{e}"
end
```

#### Using the get_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Bill>, Integer, Hash)> get_bill_with_http_info(bill_id)

```ruby
begin
  # Retrieve a bill
  data, status_code, headers = api_instance.get_bill_with_http_info(bill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Bill>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** | Bill ID |  |

### Return type

[**Bill**](Bill.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_payment

> <BillPayment> get_bill_payment(bill_payment_id)

Retrieve a bill payment

Retrieves a specific bill payment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Read</code> 

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

api_instance = Propertyware::BillsApi.new
bill_payment_id = 789 # Integer | Bill Payment ID

begin
  # Retrieve a bill payment
  result = api_instance.get_bill_payment(bill_payment_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bill_payment: #{e}"
end
```

#### Using the get_bill_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillPayment>, Integer, Hash)> get_bill_payment_with_http_info(bill_payment_id)

```ruby
begin
  # Retrieve a bill payment
  data, status_code, headers = api_instance.get_bill_payment_with_http_info(bill_payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillPayment>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bill_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_payment_id** | **Integer** | Bill Payment ID |  |

### Return type

[**BillPayment**](BillPayment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_payments

> <Array<BillPayment>> get_bill_payments(opts)

Retrieve all bill payments

Retrieves a list of bill payments.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>vendorid</code>, <code>lastmodifieddatetime</code>, <code>paymentdate</code>, <code>checknumber</code>, <code>id</code>

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

api_instance = Propertyware::BillsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  vendor_id: 789, # Integer | Filters results to bills associated with a specific vendor.
  payment_gl_account_id: 789, # Integer | Filters results to bills associated with a specific payment general ledger account.
  payment_date_start: Date.parse('2013-10-20'), # Date | Filters results to any payment with a date on or after to the date specified.
  payment_date_end: Date.parse('2013-10-20') # Date | Filters results to any payment with a date on or prior to the date specified.
}

begin
  # Retrieve all bill payments
  result = api_instance.get_bill_payments(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bill_payments: #{e}"
end
```

#### Using the get_bill_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillPayment>>, Integer, Hash)> get_bill_payments_with_http_info(opts)

```ruby
begin
  # Retrieve all bill payments
  data, status_code, headers = api_instance.get_bill_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillPayment>>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bill_payments_with_http_info: #{e}"
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
| **vendor_id** | **Integer** | Filters results to bills associated with a specific vendor. | [optional] |
| **payment_gl_account_id** | **Integer** | Filters results to bills associated with a specific payment general ledger account. | [optional] |
| **payment_date_start** | **Date** | Filters results to any payment with a date on or after to the date specified. | [optional] |
| **payment_date_end** | **Date** | Filters results to any payment with a date on or prior to the date specified. | [optional] |

### Return type

[**Array&lt;BillPayment&gt;**](BillPayment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bills

> <Array<Bill>> get_bills(opts)

Retrieve all bills

Retrieves a list of bills.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>billdate</code>, <code>billnumber</code>, <code>lastmodifieddatetime</code>, <code>duedate</code>, <code>id</code>

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

api_instance = Propertyware::BillsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  portfolio_id: 789, # Integer | Filters results to bills associated with a specific portfolio.
  vendor_id: 789, # Integer | Filters results to bills associated with a specific vendor.
  work_order_id: 789, # Integer | Filters results to bills associated with a specific work order.
  markup_gl_account_id: 789, # Integer | Filters results to bills associated with a specific markup general ledger account.
  paid: true, # Boolean | Filters results by the bill's paid status. If no status is specified, bills with any status will be returned.
  bill_date_start: Date.parse('2013-10-20'), # Date | Filters results to any bill with a billing date on or after to the date specified.
  bill_date_end: Date.parse('2013-10-20'), # Date | Filters results to any bill with a billing date on or prior to the date specified.
  due_date_start: Date.parse('2013-10-20'), # Date | Filters results to any bill with a due date on or after to the date specified.
  due_date_end: Date.parse('2013-10-20') # Date | Filters results to any bill with a due date on or prior to the date specified.
}

begin
  # Retrieve all bills
  result = api_instance.get_bills(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bills: #{e}"
end
```

#### Using the get_bills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Bill>>, Integer, Hash)> get_bills_with_http_info(opts)

```ruby
begin
  # Retrieve all bills
  data, status_code, headers = api_instance.get_bills_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Bill>>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_bills_with_http_info: #{e}"
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
| **portfolio_id** | **Integer** | Filters results to bills associated with a specific portfolio. | [optional] |
| **vendor_id** | **Integer** | Filters results to bills associated with a specific vendor. | [optional] |
| **work_order_id** | **Integer** | Filters results to bills associated with a specific work order. | [optional] |
| **markup_gl_account_id** | **Integer** | Filters results to bills associated with a specific markup general ledger account. | [optional] |
| **paid** | **Boolean** | Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned. | [optional] |
| **bill_date_start** | **Date** | Filters results to any bill with a billing date on or after to the date specified. | [optional] |
| **bill_date_end** | **Date** | Filters results to any bill with a billing date on or prior to the date specified. | [optional] |
| **due_date_start** | **Date** | Filters results to any bill with a due date on or after to the date specified. | [optional] |
| **due_date_end** | **Date** | Filters results to any bill with a due date on or prior to the date specified. | [optional] |

### Return type

[**Array&lt;Bill&gt;**](Bill.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_checks

> <Array<Check>> get_vendor_checks(opts)

Retrieve all Vendor checks (BETA)

<p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves a list of Vendor checks.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>postdate</code>, <code>createddate</code>, <code>vendorid</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::BillsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789, # Integer | Filters results associated with a specific portfolio.
  vendor_id: 789 # Integer | Filters results to transactions associated with a specific vendor.
}

begin
  # Retrieve all Vendor checks (BETA)
  result = api_instance.get_vendor_checks(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_vendor_checks: #{e}"
end
```

#### Using the get_vendor_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Check>>, Integer, Hash)> get_vendor_checks_with_http_info(opts)

```ruby
begin
  # Retrieve all Vendor checks (BETA)
  data, status_code, headers = api_instance.get_vendor_checks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Check>>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->get_vendor_checks_with_http_info: #{e}"
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
| **vendor_id** | **Integer** | Filters results to transactions associated with a specific vendor. | [optional] |

### Return type

[**Array&lt;Check&gt;**](Check.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bill

> <Bill> update_bill(bill_id, save_bill)

Update a Bill

Update an existing bill.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
bill_id = 789 # Integer | Bill ID
save_bill = Propertyware::SaveBill.new({bill_date: Date.today, bill_splits: [Propertyware::SaveBillSplit.new({amount: 3.56, gl_account_id: 3.56, portfolio_id: 3.56})], due_date: Date.today, vendor_id: 3.56}) # SaveBill | saveBill

begin
  # Update a Bill
  result = api_instance.update_bill(bill_id, save_bill)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_bill: #{e}"
end
```

#### Using the update_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Bill>, Integer, Hash)> update_bill_with_http_info(bill_id, save_bill)

```ruby
begin
  # Update a Bill
  data, status_code, headers = api_instance.update_bill_with_http_info(bill_id, save_bill)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Bill>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** | Bill ID |  |
| **save_bill** | [**SaveBill**](SaveBill.md) | saveBill |  |

### Return type

[**Bill**](Bill.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bill_payment

> <BillPayment> update_bill_payment(bill_payment_id, save_bill_payment)

Update a Bill Payment (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Update a Bill Payment<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
bill_payment_id = 789 # Integer | Bill Payment ID
save_bill_payment = Propertyware::SaveBillPayment.new # SaveBillPayment | saveBillPayment

begin
  # Update a Bill Payment (BETA)
  result = api_instance.update_bill_payment(bill_payment_id, save_bill_payment)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_bill_payment: #{e}"
end
```

#### Using the update_bill_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillPayment>, Integer, Hash)> update_bill_payment_with_http_info(bill_payment_id, save_bill_payment)

```ruby
begin
  # Update a Bill Payment (BETA)
  data, status_code, headers = api_instance.update_bill_payment_with_http_info(bill_payment_id, save_bill_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillPayment>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_bill_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_payment_id** | **Integer** | Bill Payment ID |  |
| **save_bill_payment** | [**SaveBillPayment**](SaveBillPayment.md) | saveBillPayment |  |

### Return type

[**BillPayment**](BillPayment.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_credit

> <Bill> update_credit(credit_id, save_credit)

Update a Credit

Update an existing Credit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">BILLS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
credit_id = 789 # Integer | Credit ID
save_credit = Propertyware::SaveCredit.new({bill_date: Date.today, bill_splits: [Propertyware::SaveBillSplit.new({amount: 3.56, gl_account_id: 3.56, portfolio_id: 3.56})], vendor_id: 3.56}) # SaveCredit | saveCredit

begin
  # Update a Credit
  result = api_instance.update_credit(credit_id, save_credit)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_credit: #{e}"
end
```

#### Using the update_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Bill>, Integer, Hash)> update_credit_with_http_info(credit_id, save_credit)

```ruby
begin
  # Update a Credit
  data, status_code, headers = api_instance.update_credit_with_http_info(credit_id, save_credit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Bill>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_id** | **Integer** | Credit ID |  |
| **save_credit** | [**SaveCredit**](SaveCredit.md) | saveCredit |  |

### Return type

[**Bill**](Bill.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vendor_check

> <Check> update_vendor_check(vendor_check_id, save_check)

Update a Vendor check (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Update an existing Vendor check.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">VENDORS</span> - <code>Write</code> 

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

api_instance = Propertyware::BillsApi.new
vendor_check_id = 789 # Integer | Vendor Check ID
save_check = Propertyware::SaveCheck.new({check_date: Date.today, destination_account_id: 3.56}) # SaveCheck | saveCheck

begin
  # Update a Vendor check (BETA)
  result = api_instance.update_vendor_check(vendor_check_id, save_check)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_vendor_check: #{e}"
end
```

#### Using the update_vendor_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Check>, Integer, Hash)> update_vendor_check_with_http_info(vendor_check_id, save_check)

```ruby
begin
  # Update a Vendor check (BETA)
  data, status_code, headers = api_instance.update_vendor_check_with_http_info(vendor_check_id, save_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Check>
rescue Propertyware::ApiError => e
  puts "Error when calling BillsApi->update_vendor_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_check_id** | **Integer** | Vendor Check ID |  |
| **save_check** | [**SaveCheck**](SaveCheck.md) | saveCheck |  |

### Return type

[**Check**](Check.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

