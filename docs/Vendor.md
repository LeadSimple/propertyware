# Propertyware::Vendor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Account number. | [optional] |
| **active** | **Boolean** | Indicates if the vendor is active. | [optional] |
| **address** | **String** | Address. | [optional] |
| **address2** | **String** | Address line 2. | [optional] |
| **alert_email** | **String** | Alert Email | [optional] |
| **city** | **String** | City. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **company_name** | **String** | Name of the vendor&#39;s company. | [optional] |
| **country** | **String** | Country. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **credit_limit** | **Float** | Credit limit. | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **default_bill_split_account_id** | **Integer** | Default bill split id | [optional] |
| **default_markup_discount_percentage** | **Float** | Default markup discount | [optional] |
| **description** | **String** | Description. | [optional] |
| **eligible1099** | **Boolean** | Indicates if the vendor is eligible for a 1099 form. | [optional] |
| **email** | **String** | Email address. | [optional] |
| **fax** | **String** | Fax number. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **include_company_name_on1099** | **Boolean** | Include company name on 1099 | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **markup_account_id** | **Integer** | Markup account id | [optional] |
| **name** | **String** | Name. | [optional] |
| **name_on_check** | **String** | Name to be used on checks. | [optional] |
| **other_phone** | **String** | Other phone number. | [optional] |
| **payment_term_days_to_pay** | **Integer** | The number of days within payments are due. | [optional] |
| **payment_terms** | **String** | Payment terms. | [optional] |
| **phone** | **String** | Phone number. | [optional] |
| **search_tag** | **String** | Search Tag | [optional] |
| **state** | **String** | State. | [optional] |
| **sync_to_vmm** | **Boolean** | Vendor Sync To Maintenance. | [optional] |
| **tax_id** | **String** | Tax identification number. | [optional] |
| **tax_payer_name** | **String** | Tax Payer Name | [optional] |
| **time_tracking** | **String** | Time Tracking, is enabled or disabled | [optional] |
| **type** | **String** | The type of vendor. | [optional] |
| **website** | **String** | Website URL. | [optional] |
| **zip** | **String** | ZIP or postal code. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Vendor.new(
  account_number: null,
  active: false,
  address: null,
  address2: null,
  alert_email: null,
  city: null,
  comments: null,
  company_name: null,
  country: null,
  created_by: null,
  created_date_time: null,
  credit_limit: null,
  custom_fields: null,
  default_bill_split_account_id: null,
  default_markup_discount_percentage: null,
  description: null,
  eligible1099: false,
  email: null,
  fax: null,
  id: null,
  include_company_name_on1099: false,
  last_modified_by: null,
  last_modified_date_time: null,
  markup_account_id: null,
  name: null,
  name_on_check: null,
  other_phone: null,
  payment_term_days_to_pay: null,
  payment_terms: null,
  phone: null,
  search_tag: null,
  state: null,
  sync_to_vmm: false,
  tax_id: null,
  tax_payer_name: null,
  time_tracking: null,
  type: null,
  website: null,
  zip: null
)
```

