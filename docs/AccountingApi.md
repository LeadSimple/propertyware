# Propertyware::AccountingApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bank_deposit**](AccountingApi.md#create_bank_deposit) | **POST** /accounting/bankdeposits | Create a bank deposit |
| [**create_bill_payments**](AccountingApi.md#create_bill_payments) | **POST** /accounting/glaccounts/bulk | Create general ledger accounts in bulk (BETA) |
| [**create_gl_account**](AccountingApi.md#create_gl_account) | **POST** /accounting/glaccounts | Create a general ledger account (BETA) |
| [**create_owner_contribution**](AccountingApi.md#create_owner_contribution) | **POST** /accounting/ownercontributions | Create an owner contribution |
| [**create_owner_draw**](AccountingApi.md#create_owner_draw) | **POST** /accounting/ownerdraws | Create an owner draw |
| [**delete_bank_deposit**](AccountingApi.md#delete_bank_deposit) | **DELETE** /accounting/bankdeposits/{bankDepositID} | Delete a Bank Deposit (BETA) |
| [**delete_gl_account**](AccountingApi.md#delete_gl_account) | **DELETE** /accounting/glaccounts/{glAccount} | Delete a general ledger account (BETA) |
| [**delete_owner_contribution**](AccountingApi.md#delete_owner_contribution) | **DELETE** /accounting/ownercontributions/{ownerContributionID} | Delete Owner Contribution (BETA) |
| [**get_account**](AccountingApi.md#get_account) | **GET** /accounting/glaccounts/{glAccountID} | Retrieve a general ledger account |
| [**get_accounts**](AccountingApi.md#get_accounts) | **GET** /accounting/glaccounts | Retrieve all the general ledger accounts |
| [**get_general_ledger_transactions**](AccountingApi.md#get_general_ledger_transactions) | **GET** /accounting/generalledger | Retrieve all general ledger transactions (BETA) |
| [**get_owner_contributions**](AccountingApi.md#get_owner_contributions) | **GET** /accounting/ownercontributions | Retrieve all the owner contributions |
| [**get_owner_draws**](AccountingApi.md#get_owner_draws) | **GET** /accounting/ownerdraws | Retrieve all the owner draws |
| [**update_gl_account**](AccountingApi.md#update_gl_account) | **PUT** /accounting/glaccounts/{glAccountID} | Update a general ledger account (BETA) |
| [**update_owner_draw**](AccountingApi.md#update_owner_draw) | **PUT** /accounting/ownerdraws/{drawID} | Update an owner draw |


## create_bank_deposit

> <BankDeposit> create_bank_deposit(save_bank_deposit)

Create a bank deposit

Creates a bank deposit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GENERAL LEDGER</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
save_bank_deposit = Propertyware::SaveBankDeposit.new({bank_gl_account_id: 3.56, date_opened: Date.today, list_of_tx_ids: 'list_of_tx_ids_example'}) # SaveBankDeposit | saveBankDeposit

begin
  # Create a bank deposit
  result = api_instance.create_bank_deposit(save_bank_deposit)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_bank_deposit: #{e}"
end
```

#### Using the create_bank_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankDeposit>, Integer, Hash)> create_bank_deposit_with_http_info(save_bank_deposit)

```ruby
begin
  # Create a bank deposit
  data, status_code, headers = api_instance.create_bank_deposit_with_http_info(save_bank_deposit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankDeposit>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_bank_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_bank_deposit** | [**SaveBankDeposit**](SaveBankDeposit.md) | saveBankDeposit |  |

### Return type

[**BankDeposit**](BankDeposit.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bill_payments

> <Array<RESTAPIBulkSuccessResponse>> create_bill_payments(save_account)

Create general ledger accounts in bulk (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates general ledger accounts in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
save_account = [Propertyware::SaveAccount.new({account_number: 'account_number_example', account_type: 37, code: 'code_example', description: 'description_example'})] # Array<SaveAccount> | saveAccount

begin
  # Create general ledger accounts in bulk (BETA)
  result = api_instance.create_bill_payments(save_account)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_bill_payments: #{e}"
end
```

#### Using the create_bill_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RESTAPIBulkSuccessResponse>>, Integer, Hash)> create_bill_payments_with_http_info(save_account)

```ruby
begin
  # Create general ledger accounts in bulk (BETA)
  data, status_code, headers = api_instance.create_bill_payments_with_http_info(save_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RESTAPIBulkSuccessResponse>>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_bill_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_account** | [**Array&lt;SaveAccount&gt;**](SaveAccount.md) | saveAccount |  |

### Return type

[**Array&lt;RESTAPIBulkSuccessResponse&gt;**](RESTAPIBulkSuccessResponse.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_gl_account

> <Account> create_gl_account(save_account)

Create a general ledger account (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Create a general ledger account.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
save_account = Propertyware::SaveAccount.new({account_number: 'account_number_example', account_type: 37, code: 'code_example', description: 'description_example'}) # SaveAccount | saveAccount

begin
  # Create a general ledger account (BETA)
  result = api_instance.create_gl_account(save_account)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_gl_account: #{e}"
end
```

#### Using the create_gl_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> create_gl_account_with_http_info(save_account)

```ruby
begin
  # Create a general ledger account (BETA)
  data, status_code, headers = api_instance.create_gl_account_with_http_info(save_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_gl_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_account** | [**SaveAccount**](SaveAccount.md) | saveAccount |  |

### Return type

[**Account**](Account.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_owner_contribution

> <OwnerContribution> create_owner_contribution(save_owner_contribution)

Create an owner contribution

Creates an owner contribution for a specified owner contact.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
save_owner_contribution = Propertyware::SaveOwnerContribution.new({amount: 3.56, contact_id: 3.56, date: Date.today, destination_account_id: 3.56, gl_account_id: 3.56, payment_type: 'CHECK', portfolio_id: 3.56, ref_no: 'ref_no_example'}) # SaveOwnerContribution | saveOwnerContribution

begin
  # Create an owner contribution
  result = api_instance.create_owner_contribution(save_owner_contribution)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_owner_contribution: #{e}"
end
```

#### Using the create_owner_contribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnerContribution>, Integer, Hash)> create_owner_contribution_with_http_info(save_owner_contribution)

```ruby
begin
  # Create an owner contribution
  data, status_code, headers = api_instance.create_owner_contribution_with_http_info(save_owner_contribution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnerContribution>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_owner_contribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_owner_contribution** | [**SaveOwnerContribution**](SaveOwnerContribution.md) | saveOwnerContribution |  |

### Return type

[**OwnerContribution**](OwnerContribution.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_owner_draw

> <OwnerDraw> create_owner_draw(save_owner_draw)

Create an owner draw

Creates an owner draw for a specified owner contact.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
save_owner_draw = Propertyware::SaveOwnerDraw.new({amount: 3.56, contact_id: 3.56, date: Date.today, destination_account_id: 3.56, gl_account_id: 3.56, portfolio_id: 3.56, to_be_printed: false}) # SaveOwnerDraw | saveOwnerDraw

begin
  # Create an owner draw
  result = api_instance.create_owner_draw(save_owner_draw)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_owner_draw: #{e}"
end
```

#### Using the create_owner_draw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnerDraw>, Integer, Hash)> create_owner_draw_with_http_info(save_owner_draw)

```ruby
begin
  # Create an owner draw
  data, status_code, headers = api_instance.create_owner_draw_with_http_info(save_owner_draw)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnerDraw>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->create_owner_draw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_owner_draw** | [**SaveOwnerDraw**](SaveOwnerDraw.md) | saveOwnerDraw |  |

### Return type

[**OwnerDraw**](OwnerDraw.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_bank_deposit

> <ResponseEntity> delete_bank_deposit(bank_deposit_id)

Delete a Bank Deposit (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Delete a Bank Deposit.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GENERAL LEDGER</span> - <code>Delete</code> 

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

api_instance = Propertyware::AccountingApi.new
bank_deposit_id = 789 # Integer | Bank Deposit ID

begin
  # Delete a Bank Deposit (BETA)
  result = api_instance.delete_bank_deposit(bank_deposit_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->delete_bank_deposit: #{e}"
end
```

#### Using the delete_bank_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_bank_deposit_with_http_info(bank_deposit_id)

```ruby
begin
  # Delete a Bank Deposit (BETA)
  data, status_code, headers = api_instance.delete_bank_deposit_with_http_info(bank_deposit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->delete_bank_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_deposit_id** | **Integer** | Bank Deposit ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_gl_account

> <ResponseEntity> delete_gl_account(gl_account)

Delete a general ledger account (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Delete a general ledger account.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Delete</code> 

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

api_instance = Propertyware::AccountingApi.new
gl_account = 789 # Integer | GL Account ID

begin
  # Delete a general ledger account (BETA)
  result = api_instance.delete_gl_account(gl_account)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->delete_gl_account: #{e}"
end
```

#### Using the delete_gl_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_gl_account_with_http_info(gl_account)

```ruby
begin
  # Delete a general ledger account (BETA)
  data, status_code, headers = api_instance.delete_gl_account_with_http_info(gl_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->delete_gl_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account** | **Integer** | GL Account ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_owner_contribution

> <ResponseEntity> delete_owner_contribution(owner_contribution_id)

Delete Owner Contribution (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Delete Owner Contribution.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Delete</code> 

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

api_instance = Propertyware::AccountingApi.new
owner_contribution_id = 789 # Integer | Owner Contribution ID

begin
  # Delete Owner Contribution (BETA)
  result = api_instance.delete_owner_contribution(owner_contribution_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->delete_owner_contribution: #{e}"
end
```

#### Using the delete_owner_contribution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseEntity>, Integer, Hash)> delete_owner_contribution_with_http_info(owner_contribution_id)

```ruby
begin
  # Delete Owner Contribution (BETA)
  data, status_code, headers = api_instance.delete_owner_contribution_with_http_info(owner_contribution_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseEntity>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->delete_owner_contribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_contribution_id** | **Integer** | Owner Contribution ID |  |

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account

> <Account> get_account(gl_account_id)

Retrieve a general ledger account

Retrieves a general ledger account.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Read</code> 

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

api_instance = Propertyware::AccountingApi.new
gl_account_id = 789 # Integer | GL Account ID

begin
  # Retrieve a general ledger account
  result = api_instance.get_account(gl_account_id)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> get_account_with_http_info(gl_account_id)

```ruby
begin
  # Retrieve a general ledger account
  data, status_code, headers = api_instance.get_account_with_http_info(gl_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | GL Account ID |  |

### Return type

[**Account**](Account.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <Array<Account>> get_accounts(opts)

Retrieve all the general ledger accounts

Retrieves a list of general ledger accounts.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>accountcode</code>, <code>id</code>, <code>accountnumber</code>

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

api_instance = Propertyware::AccountingApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  account_number: 'account_number_example', # String | Filters results to accounts with a specific number.
  include_deactivated: true, # Boolean | Include deactivated results if a `true` value is passed. If no value is specified, only active accounts will be returned.
  account_code: 'account_code_example', # String | Filters results to accounts with a specific code.
  parent_gl_account_id: 789 # Integer | Filters results to accounts that are a children of a specific parent account.
}

begin
  # Retrieve all the general ledger accounts
  result = api_instance.get_accounts(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> get_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve all the general ledger accounts
  data, status_code, headers = api_instance.get_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_accounts_with_http_info: #{e}"
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
| **account_number** | **String** | Filters results to accounts with a specific number. | [optional] |
| **include_deactivated** | **Boolean** | Include deactivated results if a &#x60;true&#x60; value is passed. If no value is specified, only active accounts will be returned. | [optional] |
| **account_code** | **String** | Filters results to accounts with a specific code. | [optional] |
| **parent_gl_account_id** | **Integer** | Filters results to accounts that are a children of a specific parent account. | [optional] |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_general_ledger_transactions

> <Array<GLItem>> get_general_ledger_transactions(opts)

Retrieve all general ledger transactions (BETA)

<p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves a list of general ledger transactions.<br /><br />At least of the following date ranges must be passed as a filter:   * `lastModifiedDateStart`-`lastModifiedDateEnd`   * `createdDateStart`-`createdDateEnd`<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GENERAL LEDGER</span> - <code>Read</code> 

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

api_instance = Propertyware::AccountingApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  lease_id: 789, # Integer | Filters results to transactions associated with a specific lease.
  owner_id: 789, # Integer | Filters results to transactions associated with a specific owner.
  vendor_id: 789, # Integer | Filters results to transactions associated with a specific vendor.
  portfolio_id: 789, # Integer | Filters results to transactions associated with a specific Portfolio.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with post date on or after to the date specified.
  post_date_end: Date.parse('2013-10-20') # Date | Filters results to any transaction with post date on or prior to the date specified.
}

begin
  # Retrieve all general ledger transactions (BETA)
  result = api_instance.get_general_ledger_transactions(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_general_ledger_transactions: #{e}"
end
```

#### Using the get_general_ledger_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GLItem>>, Integer, Hash)> get_general_ledger_transactions_with_http_info(opts)

```ruby
begin
  # Retrieve all general ledger transactions (BETA)
  data, status_code, headers = api_instance.get_general_ledger_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GLItem>>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_general_ledger_transactions_with_http_info: #{e}"
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
| **owner_id** | **Integer** | Filters results to transactions associated with a specific owner. | [optional] |
| **vendor_id** | **Integer** | Filters results to transactions associated with a specific vendor. | [optional] |
| **portfolio_id** | **Integer** | Filters results to transactions associated with a specific Portfolio. | [optional] |
| **post_date_start** | **Date** | Filters results to any transaction with post date on or after to the date specified. | [optional] |
| **post_date_end** | **Date** | Filters results to any transaction with post date on or prior to the date specified. | [optional] |

### Return type

[**Array&lt;GLItem&gt;**](GLItem.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_owner_contributions

> <Array<OwnerContribution>> get_owner_contributions(opts)

Retrieve all the owner contributions

Retrieves a list of owner contributions.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>

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

api_instance = Propertyware::AccountingApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789 # Integer | Filters results to with portfolioID.
}

begin
  # Retrieve all the owner contributions
  result = api_instance.get_owner_contributions(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_owner_contributions: #{e}"
end
```

#### Using the get_owner_contributions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OwnerContribution>>, Integer, Hash)> get_owner_contributions_with_http_info(opts)

```ruby
begin
  # Retrieve all the owner contributions
  data, status_code, headers = api_instance.get_owner_contributions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OwnerContribution>>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_owner_contributions_with_http_info: #{e}"
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
| **portfolio_id** | **Integer** | Filters results to with portfolioID. | [optional] |

### Return type

[**Array&lt;OwnerContribution&gt;**](OwnerContribution.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_owner_draws

> <Array<OwnerDraw>> get_owner_draws(opts)

Retrieve all the owner draws

Retrieves a list of owner draws.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>portfolioid</code>, <code>id</code>

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

api_instance = Propertyware::AccountingApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  post_date_start: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or after the date specified.
  post_date_end: Date.parse('2013-10-20'), # Date | Filters results to any transaction with a start date on or prior to the date specified.
  portfolio_id: 789 # Integer | Filters results to with portfolioID.
}

begin
  # Retrieve all the owner draws
  result = api_instance.get_owner_draws(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_owner_draws: #{e}"
end
```

#### Using the get_owner_draws_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OwnerDraw>>, Integer, Hash)> get_owner_draws_with_http_info(opts)

```ruby
begin
  # Retrieve all the owner draws
  data, status_code, headers = api_instance.get_owner_draws_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OwnerDraw>>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->get_owner_draws_with_http_info: #{e}"
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
| **portfolio_id** | **Integer** | Filters results to with portfolioID. | [optional] |

### Return type

[**Array&lt;OwnerDraw&gt;**](OwnerDraw.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_gl_account

> <Account> update_gl_account(gl_account_id, save_account)

Update a general ledger account (BETA)

<p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a general ledger account.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
gl_account_id = 789 # Integer | GL Account ID
save_account = Propertyware::SaveAccount.new({account_number: 'account_number_example', account_type: 37, code: 'code_example', description: 'description_example'}) # SaveAccount | saveAccount

begin
  # Update a general ledger account (BETA)
  result = api_instance.update_gl_account(gl_account_id, save_account)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->update_gl_account: #{e}"
end
```

#### Using the update_gl_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> update_gl_account_with_http_info(gl_account_id, save_account)

```ruby
begin
  # Update a general ledger account (BETA)
  data, status_code, headers = api_instance.update_gl_account_with_http_info(gl_account_id, save_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->update_gl_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | GL Account ID |  |
| **save_account** | [**SaveAccount**](SaveAccount.md) | saveAccount |  |

### Return type

[**Account**](Account.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_owner_draw

> <OwnerDraw> update_owner_draw(draw_id, save_owner_draw)

Update an owner draw

Updates an owner draw for a specified owner contact.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 

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

api_instance = Propertyware::AccountingApi.new
draw_id = 789 # Integer | Owner Draw ID
save_owner_draw = Propertyware::SaveOwnerDraw.new({amount: 3.56, contact_id: 3.56, date: Date.today, destination_account_id: 3.56, gl_account_id: 3.56, portfolio_id: 3.56, to_be_printed: false}) # SaveOwnerDraw | saveOwnerDraw

begin
  # Update an owner draw
  result = api_instance.update_owner_draw(draw_id, save_owner_draw)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->update_owner_draw: #{e}"
end
```

#### Using the update_owner_draw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnerDraw>, Integer, Hash)> update_owner_draw_with_http_info(draw_id, save_owner_draw)

```ruby
begin
  # Update an owner draw
  data, status_code, headers = api_instance.update_owner_draw_with_http_info(draw_id, save_owner_draw)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnerDraw>
rescue Propertyware::ApiError => e
  puts "Error when calling AccountingApi->update_owner_draw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draw_id** | **Integer** | Owner Draw ID |  |
| **save_owner_draw** | [**SaveOwnerDraw**](SaveOwnerDraw.md) | saveOwnerDraw |  |

### Return type

[**OwnerDraw**](OwnerDraw.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

