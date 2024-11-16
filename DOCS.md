# propertyware

Propertyware - the Ruby gem for the Open API, powered by Propertyware

﻿<script type=\"text/javascript\" src=\"https://buildium.atlassian.net/s/d41d8cd98f00b204e9800998ecf8427e-T/-raa8on/b/8/c95134bc67d3a521bb3f4331beb9b804/_/download/batch/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector.js?locale=en-US&collectorId=e43cd15d\"></script>

# Introduction

Welcome to Propertyware’s API—a powerful, RESTful programming interface that lets you leverage valuable Propertyware data.

## Account Configuration
Before you can use Propertyware’s API, you’ll need to make some tweaks to your account settings. 

<br />

### Enabling the API 
In order to start creating your keys and making requests, you’ll need to enable the API.

>  **Tip:** You’ll need an administrator user role with access to ***Administration Setup > API Keys*** to set things up properly. 

**Let's Begin!** 

1. Sign in to your [Propertyware](https://app.propertyware.com/pw/login.jsp) account from your browser. 

2. Open the ***Setup*** page

3. On the left navigation bar, expand ***Administration Setup*** and then click ***API Keys***. 

If you are having issues accessing the API keys page within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.

## API Keys
Account-level API keys authenticate every request and keep things secure. 

API keys have two components: a “client ID” and a “secret”.

* **Client IDs** are similar to usernames. They’re used to identify your Propertyware API key and are safe to share.
* **Secrets** are similar to passwords. They must be kept confidential. 

Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.

>  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!

## Creating API Keys 

Now that the Open API is enabled, you’ll be able to create API keys. You’re almost there!

**How to create an API key** 

1. On the API Keys page, click ***Create API Key***. A modal will appear.

<p>
    <img src=\"APIKey_Page.JPG\"/>
</p>

<p>
    <img src=\"APIKey_New.JPG\"/>
</p>

2. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request.

3. Now, choose which pieces of Propertyware data you want this API key to have access to by selecting the corresponding radio buttons. Once finished, click **GENERATE KEY**.

4. You have successfully created an API key! The client id and secret associated to this key will be presented. 

<p>
    <img src=\"APIKey_Generate.JPG\"/>
</p>

> **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.


You have now successfully created an API key and have everything you need to  send requests to the Propertyware API! 

Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping API Keys Safe](#section/Getting-Started/Keeping-API-Keys-Safe) for an overview on securely storing your API keys.  
<br />
If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.

## Keeping API Keys Safe

Based on their permissions, API keys could have full access to your account’s Propertyware data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.

### Recommended Practices

- Avoid hard-coding client IDs and secrets inside source files.
- Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.
- Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Propertyware entities or to read-only access (GET resources only).
- Avoid sharing client IDs and secrets across public, insecure platforms.
- Establish a process to regularly recreate your client IDs and secrets from your Propertyware account.
<br />
<br />

## How to Make a Request 

You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!

> **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman. 

### Let's Get Started!

#### Step 1: Get Your API Key

If you haven't yet done so, obtain your API key client ID and secret from your Propertyware account. Your API key is how the Propertyware API authenticates requests and ensures only you can access your data.

#### Step 2: Install a HTTP client

The Propertyware API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Propertyware API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.

#### Step 3: Make a Sample Request

Let's dive in and make a simple request to get all the [Buildings](#operation/getBuildingsUsingGET) in your account. This will confirm your connectivity to our platform and validate the keys you created on our website. Simply follow the instructions below.

1. Open the Postman application. 
2. Open the *verb* menu and select **GET**.
3. Enter the request endpoint in the field next to GET. 
   - Here’s the endpoint to get all buildings: https://api.propertyware.com/pw/api/rest/v1/buildings.
4. To authenticate the request, enter your `client ID`, your `secret` and your `organization iD` respectively in these request headers: 
   - `x-propertyware-client-id`
   - `x-propertyware-client-secret`
   - `x-propertyware-system-id` _(organization id)_

The organization id uniquely identifies your Propertyware account and is an additional measure to enforce proper access to the correct data. ___Your client id and secret pair will only work with the organization it belongs to___.

Your full request should look similar to the image below.
<kbd><img src=\"request_example.png\" /></kbd>

5. Review the parameters of your request on last time. Once finished, click **Send**.

6. If successful, you should see a JSON response and a `200` HTTP status code. Congratulations! You've connected to the Propertyware API.

You now have the knowledge required to make requests for any of our resources.

If you've received an error response please review the JSON response message for a description of how to resolve the issue. You can also see more information about HTTP status codes in the [Response Codes](#section/API-Overview/Response-Codes) section. If you are still having trouble making a request after reviewing these sections please submit a [Support](#section/API-Overview/Support) request.

# API Overview
The Propertyware API is built upon standard REST conventions. It's designed to use consistent resource-oriented URLs, accept and return JSON-encoded messages, and use standard HTTP status codes and verbs.

## Base URL
The base URL for production environment API requests is: `https://api.propertyware.com/pw/api/v1/rest`

In order to ensure all requests and responses are secure between the API consumer and Propertyware servers, requests must be made using the `https` protocol. Any requests not made with the `https` protocol will be refused by the Propertyware API platform. 

> **Note:** URL paths are case-sensitive to stay consistent with common REST standards. If your request doesn’t align with the documented URL path, you’ll receive a `404` response code reminding you of this constraint.

## API Versioning
The Propertyware API is version controlled. Versioning ensures backwards-incompatible changes to the API don’t impact any existing integrations.

Propertyware uses only a major version nomenclature to manage changes. The current version of the Propertyware API is version 1. By specifying a version in the resource request URL, you'll get expected responses regardless of future changes to the API. Here's an example of calling version 1 of the retrieve all leases resource:

`https://api.propertyware.com/pw/api/rest/v1/leases`

Any request submitted without the version in the URL path will result in a `404` error response code. 

### Releasing Changes to the API
The Propertyware API will continue to evolve to ensure it meets the needs of our customers. Changes will be defined as either backwards-compatible or backwards-incompatible. 

We’ll provide advance notice for all API releases–regardless of the type of modifications being made. 

#### Backward-compatible Changes
Backward-compatible changes are modifications to the API that shouldn't impact existing integrations. They'll apply to the current version of the API. Simply put: you won’t need to change the version to consume new changes like these. 

It's important as you develop against the Propertyware API that you ensure  these types of changes don't impact your integration. Here's are examples of backward-compatible modifications. 

* Adding new API resources and/or endpoints.
* Adding new optional request parameters to existing API methods.
* Adding new properties to existing API responses and non-required properties for request messages.
* Changing property order in existing API responses.

All backward-compatible changes to the API will be documented in the [Changelog](#section/Changelog).

#### Backwards-incompatible Changes

When backwards-incompatible changes to the API occur, a new version of the API will be released. You’ll need to update the URL path  to consume resources under the new API version. 

Backwards-incompatible changes include:

* Removing a property from a request and/or response message.
* Changing the name of a property in a message.
* Adding a required parameter to a request message.
* Changing existing enumeration values.

New versions of the API will have full reference documentation and an upgrade guide. 

## Authentication

The Propertyware API uses API key’s client IDs and secrets to authenticate requests. 

An organization ID, an API key client ID and secret must be passed in every request header using the following parameters: 

- `x-propertyware-client-id`
- `x-propertyware-client-secret`
- `x-propertyware-system-id`

Failing to provide both of them in the request header will cause the API to return a `401` HTTP status code.
<!--
## Rate Limiting (FUTURE)
Rate limits help us ensure consistent and reliable performance for all users, even during peak loads. That’s why we limit clients to **10 concurrent requests per second**.

If your request rate violates that limit, a response code of `429` is returned. Simply retry the request after a short interval (~200ms).
-->

## Bulk Request Options
All top-level API resources support bulk fetches. For instance, you can retrieve all [Portfolios](#operation/getPortfoliosUsingGET). These resources also allow for filtering criteria. Each resource has descriptions of the filter criteria available.

In addition to filtering, our API gives you the ability to control the returned data’s pagination and the sort order. 

### Pagination
Endpoints that return result sets allow for pagination using `limit` and `offset` request parameters to reduce the amount of data returned.

The `limit` request parameter will cap the number of results that come back in the response. If you don't specify a `limit` value, a **default of 100 results** are returned. The maximum `limit` value is 500. If a `limit` value is specified greater than 500, it will be overridden to the default to 500. 

The `offset` request parameter indicates the record position within the resultset to start at when returning the results. The `offset` is zero-based and is inclusive. If no `offset` value is submitted it will default to 0. 


The total resultset count is returned in the HTTP Header `X-Total-Count`


#### Pagination Example

As an example, let's say we make a request to retrieve all rental properties with no paging parameters. Our response indicates in the `X-Total-Count` header that there are 150 total rental properties. We want to get only the last 50 results so we would submit a request with the `offset` set to 100 and the `limit` set to 50.

> **Note:** The `limit` and `offset` parameter names are case-sensitive. If they aren't formatted correctly, the API will return a `404` HTTP status code.

### Sorting Results

You can specify the sort order of returned data by assigning properties from the returned object to the `orderby` parameter in the querystring. For example:
```
orderby=name
```
By default, the sort is performed in ascending order. To specify sort order, use \"asc\" for ascending or \"desc\" for descending. For example:
```
orderby=name desc
```
Additionally, you can sort by multiple properties by comma separating the properties. For example:
```
orderby=abbreviation asc,name desc
```

> **Note:** While the `orderby` parameter is case-sensitive, the properties specified in the `orderby` value aren't. 

## Response Codes
The Propertyware API supports standard HTTP status codes.

|Response Code          |Description  |
|--|--|
|200 OK | Everything worked as expected. |
|400 Bad Request | The request was unacceptable, often due to missing a required parameter.|
|401 Unauthorized|The API client ID and secret weren’t provided or they’re no longer valid. Be sure that the client ID and secret combination are correct and they are still active.|
|403 Forbidden|The API key doesn't have permission to perform the request. This could be due to authorization for the given endpoint or an inability to access given entities within the platform (e.g. properties).
|404 Not Found|The requested resource doesn't exist.|
|415 Unsupported Media Type |Ensure you have the appropriate content-type header value set on your request. Each resource is documented with media type(s) that are accepted.|
|429 Too Many Requests |Too many requests against the API too quickly. We recommend an exponential backoff of your requests.|
|500 and above - Server Errors|Something went wrong on Propertyware's end. Review the JSON response message for more details about the error.|

## API Date Format
* For all request and response date fields allowing ISO date format: YYYY-MM-DD (e.g.2019-08-24).
* For all request and response dateAndTime fields format is allowing: YYYY-MM-dd'T'HH:mm:ssXXX (e.g.2022-06-28T08:47:13Z).

## Support
If you are unable to resolve your issue after reviewing the API documentation our support team can assist you.

# Changelog
### 2023-08-28
* Update a document

### 2023-07-11
* Delete a document

### 2023-07-11
* Retrieve all documents
* Retrieve a document
* Download a document

### 2023-06-10
* Lease contacts are included in Retrieve all leases API response
* Lease contacts are included in Retrieve a lease API response

### 2023-04-24
* Bulk Insertion: Prospects
* Bulk Insertion: Bill Payments

### 2023-04-11

* Bulk Insertion: Portfolios
* Bulk Insertion: Buildings
* Bulk Insertion: Units

### 2023-03-19

* Bulk insertion: contacts

### 2023-03-08

* Bulk insertion: bills

### 2023-01-24

* Custom fields in \"Get all\" endpoints
* Prospect creation
* Bill removals 
 
### 2022-10-25

* API Read operations for non-financial data

### 2022-09-21

* API Read operations available 

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.3.1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build propertyware.gemspec
```

Then either install the gem locally:

```shell
gem install ./propertyware-1.3.2.gem
```

(for development, run `gem install --dev ./propertyware-1.3.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'propertyware', '~> 1.3.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'propertyware', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'propertyware'

# Setup authorization
Propertyware.configure do |config|
  # Configure API key authorization: organizationId
  config.api_key['organizationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['organizationId'] = 'Bearer'
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }

  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = Propertyware::AccountingApi.new
save_bank_deposit = Propertyware::SaveBankDeposit.new({bank_gl_account_id: 3.56, list_of_tx_ids: 'list_of_tx_ids_example'}) # SaveBankDeposit | saveBankDeposit

begin
  #Create a bank deposit (BETA)
  result = api_instance.create_bank_deposit(save_bank_deposit)
  p result
rescue Propertyware::ApiError => e
  puts "Exception when calling AccountingApi->create_bank_deposit: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Propertyware::AccountingApi* | [**create_bank_deposit**](docs/AccountingApi.md#create_bank_deposit) | **POST** /accounting/bankdeposits | Create a bank deposit (BETA)
*Propertyware::AccountingApi* | [**create_bill_payments**](docs/AccountingApi.md#create_bill_payments) | **POST** /accounting/glaccounts/bulk | Create general ledger accounts in bulk (BETA)
*Propertyware::AccountingApi* | [**create_gl_account**](docs/AccountingApi.md#create_gl_account) | **POST** /accounting/glaccounts | Create a general ledger account (BETA)
*Propertyware::AccountingApi* | [**create_owner_contribution**](docs/AccountingApi.md#create_owner_contribution) | **POST** /accounting/ownercontributions | Create an owner contribution (BETA)
*Propertyware::AccountingApi* | [**create_owner_draw**](docs/AccountingApi.md#create_owner_draw) | **POST** /accounting/ownerdraws | Create an owner draw (BETA)
*Propertyware::AccountingApi* | [**delete_bank_deposit**](docs/AccountingApi.md#delete_bank_deposit) | **DELETE** /accounting/bankdeposits/{bankDepositID} | Delete a Bank Deposit (BETA)
*Propertyware::AccountingApi* | [**delete_gl_account**](docs/AccountingApi.md#delete_gl_account) | **DELETE** /accounting/glaccounts/{glAccount} | Delete a general ledger account (BETA)
*Propertyware::AccountingApi* | [**delete_owner_contribution**](docs/AccountingApi.md#delete_owner_contribution) | **DELETE** /accounting/ownercontributions/{ownerContributionID} | Delete Owner Contribution (BETA)
*Propertyware::AccountingApi* | [**get_accounts**](docs/AccountingApi.md#get_accounts) | **GET** /accounting/glaccounts | Retrieve all the general ledger accounts (BETA)
*Propertyware::AccountingApi* | [**get_general_ledger_transactions**](docs/AccountingApi.md#get_general_ledger_transactions) | **GET** /accounting/generalledger | Retrieve all general ledger transactions (BETA)
*Propertyware::AccountingApi* | [**get_owner_contributions**](docs/AccountingApi.md#get_owner_contributions) | **GET** /accounting/ownercontributions | Retrieve all the owner contributions (BETA)
*Propertyware::AccountingApi* | [**get_owner_draws**](docs/AccountingApi.md#get_owner_draws) | **GET** /accounting/ownerdraws | Retrieve all the owner draws (BETA)
*Propertyware::AccountingApi* | [**update_gl_account**](docs/AccountingApi.md#update_gl_account) | **PUT** /accounting/glaccounts/{glAccountID} | Update a general ledger account (BETA)
*Propertyware::AccountingApi* | [**update_owner_draw**](docs/AccountingApi.md#update_owner_draw) | **PUT** /accounting/ownerdraws/{drawID} | Update an owner draw (BETA)
*Propertyware::BillsApi* | [**create_bill**](docs/BillsApi.md#create_bill) | **POST** /bills | Create a bill (BETA)
*Propertyware::BillsApi* | [**create_bill_payment**](docs/BillsApi.md#create_bill_payment) | **POST** /bills/payment | Creates Bill Payment (BETA)
*Propertyware::BillsApi* | [**create_bill_payments_using_post1**](docs/BillsApi.md#create_bill_payments_using_post1) | **POST** /bills/payments/bulk | Create bill payments in bulk (BETA)
*Propertyware::BillsApi* | [**create_bills**](docs/BillsApi.md#create_bills) | **POST** /bills/bulk | Create bills in bulk (BETA)
*Propertyware::BillsApi* | [**create_credit**](docs/BillsApi.md#create_credit) | **POST** /bills/credit | Create a credit (BETA)
*Propertyware::BillsApi* | [**create_vendor_check**](docs/BillsApi.md#create_vendor_check) | **POST** /bills/vendorChecks | Create a Vendor check (BETA)
*Propertyware::BillsApi* | [**delete_bill**](docs/BillsApi.md#delete_bill) | **DELETE** /bills/{billID} | Delete a Bill (BETA)
*Propertyware::BillsApi* | [**get_bill**](docs/BillsApi.md#get_bill) | **GET** /bills/{billID} | Retrieve a bill (BETA)
*Propertyware::BillsApi* | [**get_bill_payment**](docs/BillsApi.md#get_bill_payment) | **GET** /bills/payments/{billPaymentID} | Retrieve a bill payment (BETA)
*Propertyware::BillsApi* | [**get_bill_payments**](docs/BillsApi.md#get_bill_payments) | **GET** /bills/payments | Retrieve all bill payments (BETA)
*Propertyware::BillsApi* | [**get_bills**](docs/BillsApi.md#get_bills) | **GET** /bills | Retrieve all bills (BETA)
*Propertyware::BillsApi* | [**get_vendor_checks**](docs/BillsApi.md#get_vendor_checks) | **GET** /bills/vendorChecks | Retrieve all Vendor checks (BETA)
*Propertyware::BillsApi* | [**update_bill**](docs/BillsApi.md#update_bill) | **PUT** /bills/{billId} | Update a Bill (BETA)
*Propertyware::BillsApi* | [**update_bill_payment**](docs/BillsApi.md#update_bill_payment) | **PUT** /bills/payment/{billPaymentID} | Update a Bill Payment (BETA)
*Propertyware::BillsApi* | [**update_credit**](docs/BillsApi.md#update_credit) | **PUT** /bills/credit/{creditID} | Update a Credit (BETA)
*Propertyware::BillsApi* | [**update_vendor_check**](docs/BillsApi.md#update_vendor_check) | **PUT** /bills/vendorChecks/{vendorCheckID} | Update a Vendor check (BETA)
*Propertyware::BuildingsApi* | [**create_building**](docs/BuildingsApi.md#create_building) | **POST** /buildings | Create a building (BETA)
*Propertyware::BuildingsApi* | [**create_contacts**](docs/BuildingsApi.md#create_contacts) | **POST** /buildings/bulk | Create buildings in bulk (BETA)
*Propertyware::BuildingsApi* | [**delete_building**](docs/BuildingsApi.md#delete_building) | **DELETE** /buildings/{buildingID} | Delete a building (BETA)
*Propertyware::BuildingsApi* | [**delete_building_conversation**](docs/BuildingsApi.md#delete_building_conversation) | **DELETE** /buildings/{buildingID}/conversations/{conversationID} | Delete a building conversation (BETA)
*Propertyware::BuildingsApi* | [**get_building**](docs/BuildingsApi.md#get_building) | **GET** /buildings/{buildingID} | Retrieve a building
*Propertyware::BuildingsApi* | [**get_building_conversation**](docs/BuildingsApi.md#get_building_conversation) | **GET** /buildings/{buildingID}/conversations/{conversationID} | Retrieve a building conversation
*Propertyware::BuildingsApi* | [**get_building_conversations**](docs/BuildingsApi.md#get_building_conversations) | **GET** /buildings/{buildingID}/conversations | Retrieve all building conversations
*Propertyware::BuildingsApi* | [**get_building_management_fee**](docs/BuildingsApi.md#get_building_management_fee) | **GET** /buildings/{buildingID}/managementfees | Retrieve all building management fees (BETA)
*Propertyware::BuildingsApi* | [**get_building_managers**](docs/BuildingsApi.md#get_building_managers) | **GET** /buildings/{buildingID}/managers | Retrieve all building property managers
*Propertyware::BuildingsApi* | [**get_building_notes**](docs/BuildingsApi.md#get_building_notes) | **GET** /buildings/{buildingID}/notes | Retrieve all building notes
*Propertyware::BuildingsApi* | [**get_buildings**](docs/BuildingsApi.md#get_buildings) | **GET** /buildings | Retrieve all buildings
*Propertyware::BuildingsApi* | [**update_building**](docs/BuildingsApi.md#update_building) | **PUT** /buildings/{buildingID} | Update a building (BETA)
*Propertyware::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /contacts | Create a contact (BETA)
*Propertyware::ContactsApi* | [**create_contacts_using_post1**](docs/ContactsApi.md#create_contacts_using_post1) | **POST** /contacts/bulk | Create contacts in bulk (BETA)
*Propertyware::ContactsApi* | [**delete_contact**](docs/ContactsApi.md#delete_contact) | **DELETE** /contacts/{contactID} | Delete a contact (BETA)
*Propertyware::ContactsApi* | [**delete_contact_conversation**](docs/ContactsApi.md#delete_contact_conversation) | **DELETE** /contacts/{contactID}/conversations/{conversationID} | Delete a contact conversation (BETA)
*Propertyware::ContactsApi* | [**get_contact**](docs/ContactsApi.md#get_contact) | **GET** /contacts/{contactID} | Retrieve a contact
*Propertyware::ContactsApi* | [**get_contact_categories**](docs/ContactsApi.md#get_contact_categories) | **GET** /contacts/categories | Retrieve all contact categories
*Propertyware::ContactsApi* | [**get_contact_conversation**](docs/ContactsApi.md#get_contact_conversation) | **GET** /contacts/{contactID}/conversations/{conversationID} | Retrieve a contact conversation
*Propertyware::ContactsApi* | [**get_contact_conversations**](docs/ContactsApi.md#get_contact_conversations) | **GET** /contacts/{contactID}/conversations | Retrieve all contact conversations
*Propertyware::ContactsApi* | [**get_contacts**](docs/ContactsApi.md#get_contacts) | **GET** /contacts | Retrieve all contacts
*Propertyware::ContactsApi* | [**update_contact**](docs/ContactsApi.md#update_contact) | **PUT** /contacts/{contactID} | Update a contact (BETA)
*Propertyware::CustomFieldFieldsApi* | [**retrieve_custom_field_definitions**](docs/CustomFieldFieldsApi.md#retrieve_custom_field_definitions) | **GET** /customfields/{entityType}/definitions | Retrieve list of custom field definitions.
*Propertyware::DocumentsApi* | [**delete_document**](docs/DocumentsApi.md#delete_document) | **DELETE** /docs/{documentId} | Delete a document (BETA)
*Propertyware::DocumentsApi* | [**download_document**](docs/DocumentsApi.md#download_document) | **GET** /docs/{documentId}/download | Download a document
*Propertyware::DocumentsApi* | [**retrieve_all_documents**](docs/DocumentsApi.md#retrieve_all_documents) | **GET** /docs | Retrieve all documents
*Propertyware::DocumentsApi* | [**retrieve_document**](docs/DocumentsApi.md#retrieve_document) | **GET** /docs/{documentId} | Retrieve a document
*Propertyware::DocumentsApi* | [**update_document**](docs/DocumentsApi.md#update_document) | **PUT** /docs/{documentId} | Update a document (BETA)
*Propertyware::DocumentsApi* | [**upload_document**](docs/DocumentsApi.md#upload_document) | **POST** /docs | Upload a document (BETA)
*Propertyware::HealthCheckApi* | [**health**](docs/HealthCheckApi.md#health) | **GET** /health | Health check
*Propertyware::InspectionsApi* | [**get_inspection**](docs/InspectionsApi.md#get_inspection) | **GET** /inspections/{inspectionId} | Retrieve a inspection
*Propertyware::InspectionsApi* | [**get_inspections**](docs/InspectionsApi.md#get_inspections) | **GET** /inspections | Retrieve all inspections
*Propertyware::LeasesApi* | [**add_comment_to_lease_conversation**](docs/LeasesApi.md#add_comment_to_lease_conversation) | **POST** /leases/{leaseID}/conversations/{conversationID}/comments | Add comment to a lease conversation (BETA)
*Propertyware::LeasesApi* | [**create_journal_entry**](docs/LeasesApi.md#create_journal_entry) | **POST** /leases/journalentries | Create a lease journal entry (BETA)
*Propertyware::LeasesApi* | [**create_lease**](docs/LeasesApi.md#create_lease) | **POST** /leases | Create a lease (BETA)
*Propertyware::LeasesApi* | [**create_lease_adjustment**](docs/LeasesApi.md#create_lease_adjustment) | **POST** /leases/adjustments | Create a lease adjustment (BETA)
*Propertyware::LeasesApi* | [**create_lease_charge**](docs/LeasesApi.md#create_lease_charge) | **POST** /leases/charges | Create a lease charge (BETA)
*Propertyware::LeasesApi* | [**create_lease_charges**](docs/LeasesApi.md#create_lease_charges) | **POST** /leases/charges/bulk | Create lease charges in bulk (BETA)
*Propertyware::LeasesApi* | [**create_lease_conversation**](docs/LeasesApi.md#create_lease_conversation) | **POST** /leases/{leaseID}/conversations | Create a lease conversation (BETA)
*Propertyware::LeasesApi* | [**create_lease_discount**](docs/LeasesApi.md#create_lease_discount) | **POST** /leases/discounts | Create a lease discount (BETA)
*Propertyware::LeasesApi* | [**create_lease_payment**](docs/LeasesApi.md#create_lease_payment) | **POST** /leases/payments | Create a lease payment (BETA)
*Propertyware::LeasesApi* | [**create_lease_refund**](docs/LeasesApi.md#create_lease_refund) | **POST** /leases/refunds | Create a lease refund (BETA)
*Propertyware::LeasesApi* | [**delete_lease**](docs/LeasesApi.md#delete_lease) | **DELETE** /leases/{leaseID} | Delete a lease (BETA)
*Propertyware::LeasesApi* | [**delete_lease_conversation**](docs/LeasesApi.md#delete_lease_conversation) | **DELETE** /leases/{leaseID}/conversations/{conversationID} | Delete a lease conversation (BETA)
*Propertyware::LeasesApi* | [**get_all_lease_statuses**](docs/LeasesApi.md#get_all_lease_statuses) | **GET** /leases/statuses | Retrieve all lease statuses (BETA)
*Propertyware::LeasesApi* | [**get_lease**](docs/LeasesApi.md#get_lease) | **GET** /leases/{leaseId} | Retrieve a lease
*Propertyware::LeasesApi* | [**get_lease_adjustments**](docs/LeasesApi.md#get_lease_adjustments) | **GET** /leases/adjustments | Retrieve all the adjustments
*Propertyware::LeasesApi* | [**get_lease_auto_charges**](docs/LeasesApi.md#get_lease_auto_charges) | **GET** /leases/{leaseId}/autocharges | Retrieve all lease auto charges
*Propertyware::LeasesApi* | [**get_lease_auto_e_payments**](docs/LeasesApi.md#get_lease_auto_e_payments) | **GET** /leases/{leaseId}/autoepayments | Retrieve all lease auto ePayments (BETA)
*Propertyware::LeasesApi* | [**get_lease_auto_journal_entries**](docs/LeasesApi.md#get_lease_auto_journal_entries) | **GET** /leases/{leaseId}/autojournalentries | Retrieve all lease auto journal entries (BETA)
*Propertyware::LeasesApi* | [**get_lease_charges**](docs/LeasesApi.md#get_lease_charges) | **GET** /leases/charges | Retrieve all the lease charges
*Propertyware::LeasesApi* | [**get_lease_contacts**](docs/LeasesApi.md#get_lease_contacts) | **GET** /leases/{leaseId}/contacts | Retrieve all lease contacts
*Propertyware::LeasesApi* | [**get_lease_conversation**](docs/LeasesApi.md#get_lease_conversation) | **GET** /leases/{leaseID}/conversations/{conversationID} | Retrieve a lease conversation
*Propertyware::LeasesApi* | [**get_lease_conversations**](docs/LeasesApi.md#get_lease_conversations) | **GET** /leases/{leaseID}/conversations | Retrieve all lease conversations
*Propertyware::LeasesApi* | [**get_lease_credit_memos**](docs/LeasesApi.md#get_lease_credit_memos) | **GET** /leases/creditmemos | Retrieve all the credit memos
*Propertyware::LeasesApi* | [**get_lease_custom_fields**](docs/LeasesApi.md#get_lease_custom_fields) | **GET** /leases/{leaseId}/customfields | Retrieve all lease custom fields
*Propertyware::LeasesApi* | [**get_lease_discounts**](docs/LeasesApi.md#get_lease_discounts) | **GET** /leases/discounts | Retrieve all the lease discounts
*Propertyware::LeasesApi* | [**get_lease_documents**](docs/LeasesApi.md#get_lease_documents) | **GET** /leases/{leaseId}/document | Retrieve all lease documents
*Propertyware::LeasesApi* | [**get_lease_journal_entry**](docs/LeasesApi.md#get_lease_journal_entry) | **GET** /leases/journalentries/{leaseID} | Retrieve all lease journal entries 
*Propertyware::LeasesApi* | [**get_lease_late_fee**](docs/LeasesApi.md#get_lease_late_fee) | **GET** /leases/{leaseId}/latefeerule | Retrieve the lease late fee rule
*Propertyware::LeasesApi* | [**get_lease_notes**](docs/LeasesApi.md#get_lease_notes) | **GET** /leases/{leaseId}/notes | Retrieve all lease notes
*Propertyware::LeasesApi* | [**get_lease_payments**](docs/LeasesApi.md#get_lease_payments) | **GET** /leases/payments | Retrieve all the lease payments
*Propertyware::LeasesApi* | [**get_lease_refunds**](docs/LeasesApi.md#get_lease_refunds) | **GET** /leases/refunds | Retrieve all the tenant refunds
*Propertyware::LeasesApi* | [**get_lease_work_orders**](docs/LeasesApi.md#get_lease_work_orders) | **GET** /leases/{leaseId}/workorders | Retrieve all lease work orders
*Propertyware::LeasesApi* | [**get_leases**](docs/LeasesApi.md#get_leases) | **GET** /leases | Retrieve all leases
*Propertyware::LeasesApi* | [**update_lease**](docs/LeasesApi.md#update_lease) | **PUT** /leases/{leaseId} | Update a lease (BETA)
*Propertyware::LeasesApi* | [**update_lease_adjustment**](docs/LeasesApi.md#update_lease_adjustment) | **PUT** /leases/adjustments/{adjustmentID} | Update a lease adjustment (BETA)
*Propertyware::LeasesApi* | [**update_lease_charge**](docs/LeasesApi.md#update_lease_charge) | **PUT** /leases/charges/{chargeID} | Update a lease charge (BETA)
*Propertyware::LeasesApi* | [**update_lease_discount**](docs/LeasesApi.md#update_lease_discount) | **PUT** /leases/discounts/{discountID} | Updates a lease Discount (BETA)
*Propertyware::LeasesApi* | [**update_lease_journal_entry**](docs/LeasesApi.md#update_lease_journal_entry) | **PUT** /leases/journalentries/{journalentryID} | Update a lease journal entry (BETA)
*Propertyware::LeasesApi* | [**update_lease_payment**](docs/LeasesApi.md#update_lease_payment) | **PUT** /leases/payments/{entityID} | Update a lease payment (BETA)
*Propertyware::LeasesApi* | [**update_lease_refund**](docs/LeasesApi.md#update_lease_refund) | **PUT** /leases/refunds/{refundID} | Update a lease refund (BETA)
*Propertyware::PortfoliosApi* | [**create_contacts_using_post2**](docs/PortfoliosApi.md#create_contacts_using_post2) | **POST** /portfolios/bulk | Create Portfolios in bulk (BETA)
*Propertyware::PortfoliosApi* | [**create_portfolio**](docs/PortfoliosApi.md#create_portfolio) | **POST** /portfolios | Create a portfolio (BETA)
*Propertyware::PortfoliosApi* | [**delete_portfolio_conversation**](docs/PortfoliosApi.md#delete_portfolio_conversation) | **DELETE** /portfolios/{portfolioID}/conversations/{conversationID} | Delete a portfolio conversation (BETA)
*Propertyware::PortfoliosApi* | [**get_portfolio**](docs/PortfoliosApi.md#get_portfolio) | **GET** /portfolios/{portfolioID} | Retrieve a portfolio
*Propertyware::PortfoliosApi* | [**get_portfolio_conversation**](docs/PortfoliosApi.md#get_portfolio_conversation) | **GET** /portfolios/{portfolioID}/conversations/{conversationID} | Retrieve a portfolio conversation
*Propertyware::PortfoliosApi* | [**get_portfolio_conversations**](docs/PortfoliosApi.md#get_portfolio_conversations) | **GET** /portfolios/{portfolioID}/conversations | Retrieve all portfolio conversations
*Propertyware::PortfoliosApi* | [**get_portfolios**](docs/PortfoliosApi.md#get_portfolios) | **GET** /portfolios | Retrieve all portfolios
*Propertyware::PortfoliosApi* | [**update_portfolio**](docs/PortfoliosApi.md#update_portfolio) | **PUT** /portfolios/{portfolioID} | Update a portfolio (BETA)
*Propertyware::ProspectsApi* | [**create_contacts_using_post3**](docs/ProspectsApi.md#create_contacts_using_post3) | **POST** /prospects/bulk | Create prospects in bulk (BETA)
*Propertyware::ProspectsApi* | [**create_prospect**](docs/ProspectsApi.md#create_prospect) | **POST** /prospects | Create a prospect (BETA)
*Propertyware::ProspectsApi* | [**create_prospect_conversation**](docs/ProspectsApi.md#create_prospect_conversation) | **POST** /prospects/{prospectID}/conversations | Create a prospect conversation (BETA)
*Propertyware::ProspectsApi* | [**delete_prospect_conversation**](docs/ProspectsApi.md#delete_prospect_conversation) | **DELETE** /prospects/{prospectID}/conversations/{conversationID} | Delete a prospect conversation (BETA)
*Propertyware::ProspectsApi* | [**get_prospect**](docs/ProspectsApi.md#get_prospect) | **GET** /prospects/{prospectID} | Retrieve a prospect
*Propertyware::ProspectsApi* | [**get_prospect_campaign**](docs/ProspectsApi.md#get_prospect_campaign) | **GET** /prospects/{prospectID}/campaign | Retrieve prospect campaign
*Propertyware::ProspectsApi* | [**get_prospect_conversation**](docs/ProspectsApi.md#get_prospect_conversation) | **GET** /prospects/{prospectID}/conversations/{conversationID} | Retrieve a prospect conversation
*Propertyware::ProspectsApi* | [**get_prospect_conversations**](docs/ProspectsApi.md#get_prospect_conversations) | **GET** /prospects/{prospectID}/conversations | Retrieve all prospect conversations
*Propertyware::ProspectsApi* | [**get_prospect_statuses**](docs/ProspectsApi.md#get_prospect_statuses) | **GET** /prospects/statuses | Retrieve all prospect statuses (BETA)
*Propertyware::ProspectsApi* | [**get_prospects**](docs/ProspectsApi.md#get_prospects) | **GET** /prospects | Retrieve all prospects
*Propertyware::UnitsApi* | [**create_contacts_using_post4**](docs/UnitsApi.md#create_contacts_using_post4) | **POST** /units/bulk | Create units in bulk (BETA)
*Propertyware::UnitsApi* | [**create_unit**](docs/UnitsApi.md#create_unit) | **POST** /units | Create a unit (BETA)
*Propertyware::UnitsApi* | [**delete_unit**](docs/UnitsApi.md#delete_unit) | **DELETE** /units/{unitID} | Delete a unit (BETA)
*Propertyware::UnitsApi* | [**delete_unit_conversation**](docs/UnitsApi.md#delete_unit_conversation) | **DELETE** /units/{unitID}/conversations/{conversationID} | Delete a unit conversation (BETA)
*Propertyware::UnitsApi* | [**get_lease_custom_fields_using_get1**](docs/UnitsApi.md#get_lease_custom_fields_using_get1) | **GET** /units/{unitID}/customFields | Retrieve all unit custom fields
*Propertyware::UnitsApi* | [**get_unit**](docs/UnitsApi.md#get_unit) | **GET** /units/{unitID} | Retrieve a unit
*Propertyware::UnitsApi* | [**get_unit_conversation**](docs/UnitsApi.md#get_unit_conversation) | **GET** /units/{unitID}/conversations/{conversationID} | Retrieve a unit conversation
*Propertyware::UnitsApi* | [**get_unit_conversations**](docs/UnitsApi.md#get_unit_conversations) | **GET** /units/{unitID}/conversations | Retrieve all unit conversations
*Propertyware::UnitsApi* | [**get_units**](docs/UnitsApi.md#get_units) | **GET** /units | Retrieve all units
*Propertyware::UnitsApi* | [**update_unit**](docs/UnitsApi.md#update_unit) | **PUT** /units/{unitID} | Update a unit (BETA)
*Propertyware::VendorsApi* | [**create_vendor**](docs/VendorsApi.md#create_vendor) | **POST** /vendors | Create a vendor (BETA)
*Propertyware::VendorsApi* | [**create_vendors**](docs/VendorsApi.md#create_vendors) | **POST** /vendors/bulk | Create Vendors in bulk (BETA)
*Propertyware::VendorsApi* | [**get_vendor**](docs/VendorsApi.md#get_vendor) | **GET** /vendors/{vendorID} | Retrieve a vendor
*Propertyware::VendorsApi* | [**get_vendor_account**](docs/VendorsApi.md#get_vendor_account) | **GET** /vendors/{vendorID}/account | Retrieve vendor GL account (BETA)
*Propertyware::VendorsApi* | [**get_vendor_conversation**](docs/VendorsApi.md#get_vendor_conversation) | **GET** /vendors/{vendorID}/conversations/{conversationID} | Retrieve a vendor conversation
*Propertyware::VendorsApi* | [**get_vendor_conversations**](docs/VendorsApi.md#get_vendor_conversations) | **GET** /vendors/{vendorID}/conversations | Retrieve all vendor conversations
*Propertyware::VendorsApi* | [**get_vendors**](docs/VendorsApi.md#get_vendors) | **GET** /vendors | Retrieve all vendors
*Propertyware::WorkOrdersApi* | [**create_work_order**](docs/WorkOrdersApi.md#create_work_order) | **POST** /workorders | Create a work order (BETA)
*Propertyware::WorkOrdersApi* | [**create_work_order_task**](docs/WorkOrdersApi.md#create_work_order_task) | **POST** /workorders/{workOrderId}/tasks | Create a task to workOrder (BETA)
*Propertyware::WorkOrdersApi* | [**create_work_orders**](docs/WorkOrdersApi.md#create_work_orders) | **POST** /workorders/bulk | Create work orders in bulk (BETA)
*Propertyware::WorkOrdersApi* | [**delete_work_order**](docs/WorkOrdersApi.md#delete_work_order) | **DELETE** /workorders/{workOrderID} | Delete a Work Order (BETA)
*Propertyware::WorkOrdersApi* | [**delete_work_order_task**](docs/WorkOrdersApi.md#delete_work_order_task) | **DELETE** /workorders/{workOrderID}/tasks/{taskID} | Delete a work order task (BETA)
*Propertyware::WorkOrdersApi* | [**get_work_order**](docs/WorkOrdersApi.md#get_work_order) | **GET** /workorders/{workOrderId} | Retrieve a work order
*Propertyware::WorkOrdersApi* | [**get_work_order_task**](docs/WorkOrdersApi.md#get_work_order_task) | **GET** /workorders/{workOrderID}/tasks/{taskID} | Retrieve a work order task
*Propertyware::WorkOrdersApi* | [**get_work_order_tasks**](docs/WorkOrdersApi.md#get_work_order_tasks) | **GET** /workorders/{workOrderId}/tasks | Retrieve all work order tasks
*Propertyware::WorkOrdersApi* | [**get_work_orders**](docs/WorkOrdersApi.md#get_work_orders) | **GET** /workorders | Retrieve all work orders
*Propertyware::WorkOrdersApi* | [**update_work_order_task**](docs/WorkOrdersApi.md#update_work_order_task) | **PUT** /workorders/{workOrderId}/tasks/{taskId} | Update a task in workOrder (BETA)


## Documentation for Models

 - [Propertyware::Account](docs/Account.md)
 - [Propertyware::Address](docs/Address.md)
 - [Propertyware::Adjustment](docs/Adjustment.md)
 - [Propertyware::Amenity](docs/Amenity.md)
 - [Propertyware::AutoJournalEntry](docs/AutoJournalEntry.md)
 - [Propertyware::AutoPayment](docs/AutoPayment.md)
 - [Propertyware::Bank](docs/Bank.md)
 - [Propertyware::BankDeposit](docs/BankDeposit.md)
 - [Propertyware::BasicVendor](docs/BasicVendor.md)
 - [Propertyware::Bill](docs/Bill.md)
 - [Propertyware::BillPaid](docs/BillPaid.md)
 - [Propertyware::BillPay](docs/BillPay.md)
 - [Propertyware::BillPayment](docs/BillPayment.md)
 - [Propertyware::BillSplit](docs/BillSplit.md)
 - [Propertyware::Building](docs/Building.md)
 - [Propertyware::Campaign](docs/Campaign.md)
 - [Propertyware::CampaignSource](docs/CampaignSource.md)
 - [Propertyware::Charge](docs/Charge.md)
 - [Propertyware::ChargeTx](docs/ChargeTx.md)
 - [Propertyware::Check](docs/Check.md)
 - [Propertyware::CheckSplit](docs/CheckSplit.md)
 - [Propertyware::Comment](docs/Comment.md)
 - [Propertyware::Contact](docs/Contact.md)
 - [Propertyware::ContactCategory](docs/ContactCategory.md)
 - [Propertyware::Conversation](docs/Conversation.md)
 - [Propertyware::CreditCardAccount](docs/CreditCardAccount.md)
 - [Propertyware::CreditMemo](docs/CreditMemo.md)
 - [Propertyware::CurrentAsset](docs/CurrentAsset.md)
 - [Propertyware::CurrentLiability](docs/CurrentLiability.md)
 - [Propertyware::CustomField](docs/CustomField.md)
 - [Propertyware::CustomFieldDefinition](docs/CustomFieldDefinition.md)
 - [Propertyware::Discount](docs/Discount.md)
 - [Propertyware::Document](docs/Document.md)
 - [Propertyware::Entry](docs/Entry.md)
 - [Propertyware::Equity](docs/Equity.md)
 - [Propertyware::ErrorResponse](docs/ErrorResponse.md)
 - [Propertyware::Expense](docs/Expense.md)
 - [Propertyware::GLItem](docs/GLItem.md)
 - [Propertyware::Income](docs/Income.md)
 - [Propertyware::Inspection](docs/Inspection.md)
 - [Propertyware::InspectionArea](docs/InspectionArea.md)
 - [Propertyware::InspectionItem](docs/InspectionItem.md)
 - [Propertyware::JournalEntry](docs/JournalEntry.md)
 - [Propertyware::JournalEntrySplit](docs/JournalEntrySplit.md)
 - [Propertyware::JournalEntrySplitResponse](docs/JournalEntrySplitResponse.md)
 - [Propertyware::LateFeeRule](docs/LateFeeRule.md)
 - [Propertyware::Lease](docs/Lease.md)
 - [Propertyware::LeaseClause](docs/LeaseClause.md)
 - [Propertyware::LeaseContact](docs/LeaseContact.md)
 - [Propertyware::LeaseStatus](docs/LeaseStatus.md)
 - [Propertyware::ManagementFee](docs/ManagementFee.md)
 - [Propertyware::ManagementSettings](docs/ManagementSettings.md)
 - [Propertyware::Marketing](docs/Marketing.md)
 - [Propertyware::NonCurrentAsset](docs/NonCurrentAsset.md)
 - [Propertyware::NonCurrentLiability](docs/NonCurrentLiability.md)
 - [Propertyware::NonOperatingExpense](docs/NonOperatingExpense.md)
 - [Propertyware::NonOperatingInome](docs/NonOperatingInome.md)
 - [Propertyware::Note](docs/Note.md)
 - [Propertyware::Owner](docs/Owner.md)
 - [Propertyware::OwnerContribution](docs/OwnerContribution.md)
 - [Propertyware::OwnerDraw](docs/OwnerDraw.md)
 - [Propertyware::Payment](docs/Payment.md)
 - [Propertyware::PaymentCharge](docs/PaymentCharge.md)
 - [Propertyware::Portfolio](docs/Portfolio.md)
 - [Propertyware::PropertyManager](docs/PropertyManager.md)
 - [Propertyware::Prospect](docs/Prospect.md)
 - [Propertyware::ProspectContact](docs/ProspectContact.md)
 - [Propertyware::ProspectStatus](docs/ProspectStatus.md)
 - [Propertyware::RESTAPIBulkErrorResponse](docs/RESTAPIBulkErrorResponse.md)
 - [Propertyware::RESTAPIBulkSuccessResponse](docs/RESTAPIBulkSuccessResponse.md)
 - [Propertyware::RESTAPIError](docs/RESTAPIError.md)
 - [Propertyware::Refund](docs/Refund.md)
 - [Propertyware::ResponseEntity](docs/ResponseEntity.md)
 - [Propertyware::SaveAccount](docs/SaveAccount.md)
 - [Propertyware::SaveAddress](docs/SaveAddress.md)
 - [Propertyware::SaveAdjustment](docs/SaveAdjustment.md)
 - [Propertyware::SaveAutoCharge](docs/SaveAutoCharge.md)
 - [Propertyware::SaveBankDeposit](docs/SaveBankDeposit.md)
 - [Propertyware::SaveBill](docs/SaveBill.md)
 - [Propertyware::SaveBillPayment](docs/SaveBillPayment.md)
 - [Propertyware::SaveBillSplit](docs/SaveBillSplit.md)
 - [Propertyware::SaveBuilding](docs/SaveBuilding.md)
 - [Propertyware::SaveCharge](docs/SaveCharge.md)
 - [Propertyware::SaveCheck](docs/SaveCheck.md)
 - [Propertyware::SaveCheckSplit](docs/SaveCheckSplit.md)
 - [Propertyware::SaveComment](docs/SaveComment.md)
 - [Propertyware::SaveContact](docs/SaveContact.md)
 - [Propertyware::SaveConversation](docs/SaveConversation.md)
 - [Propertyware::SaveCredit](docs/SaveCredit.md)
 - [Propertyware::SaveDiscount](docs/SaveDiscount.md)
 - [Propertyware::SaveJournalEntrySplit](docs/SaveJournalEntrySplit.md)
 - [Propertyware::SaveLease](docs/SaveLease.md)
 - [Propertyware::SaveLeaseJournalEntry](docs/SaveLeaseJournalEntry.md)
 - [Propertyware::SaveOwner](docs/SaveOwner.md)
 - [Propertyware::SaveOwnerContribution](docs/SaveOwnerContribution.md)
 - [Propertyware::SaveOwnerDraw](docs/SaveOwnerDraw.md)
 - [Propertyware::SavePayment](docs/SavePayment.md)
 - [Propertyware::SavePortfolio](docs/SavePortfolio.md)
 - [Propertyware::SaveProspect](docs/SaveProspect.md)
 - [Propertyware::SaveProspectContact](docs/SaveProspectContact.md)
 - [Propertyware::SaveRefund](docs/SaveRefund.md)
 - [Propertyware::SaveUnit](docs/SaveUnit.md)
 - [Propertyware::SaveVendor](docs/SaveVendor.md)
 - [Propertyware::SaveWorkOrder](docs/SaveWorkOrder.md)
 - [Propertyware::SaveWorkOrderTask](docs/SaveWorkOrderTask.md)
 - [Propertyware::SplitPaid](docs/SplitPaid.md)
 - [Propertyware::SplitPay](docs/SplitPay.md)
 - [Propertyware::Task](docs/Task.md)
 - [Propertyware::Unit](docs/Unit.md)
 - [Propertyware::UpdateDocument](docs/UpdateDocument.md)
 - [Propertyware::UpdateLeaseJournalEntry](docs/UpdateLeaseJournalEntry.md)
 - [Propertyware::Vendor](docs/Vendor.md)
 - [Propertyware::WorkOrder](docs/WorkOrder.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### clientId


- **Type**: API key
- **API key parameter name**: x-propertyware-client-id
- **Location**: HTTP header

### clientSecret


- **Type**: API key
- **API key parameter name**: x-propertyware-client-secret
- **Location**: HTTP header

### organizationId


- **Type**: API key
- **API key parameter name**: x-propertyware-system-id
- **Location**: HTTP header

