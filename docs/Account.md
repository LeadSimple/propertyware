# Propertyware::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_code** | **String** | Account code. | [optional] |
| **account_number** | **String** | Account number. | [optional] |
| **account_type** | **String** | Account type. | [optional] |
| **active** | **Boolean** | Indicates if the account is active. | [optional] |
| **auto_apply_prepayment** | **Boolean** | Indicates if prepayments should be auto applied. | [optional] |
| **bank_account_holder** | **String** | Bank account holder name. | [optional] |
| **bank_account_number** | **String** | Bank account number. | [optional] |
| **bank_address** | **String** | Bank address. | [optional] |
| **bank_address2** | **String** | Bank address 2. | [optional] |
| **bank_city** | **String** | Bank city. | [optional] |
| **bank_institution** | **String** | Bank institution name. | [optional] |
| **bank_routing_number** | **String** | Bank account routing number. | [optional] |
| **bank_state** | **String** | Bank state. | [optional] |
| **bank_zip** | **String** | Bank zip code. | [optional] |
| **cam_recovery_account** | **Boolean** | Indicates if account is a CAM recovery account. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **description** | **String** | Description of the account. | [optional] |
| **discount_account** | **Boolean** | Indicates if account is a discount account. | [optional] |
| **escrow_account** | **Boolean** | Indicates if account is a escrow account. | [optional] |
| **exclude_from1099** | **Boolean** | Indicates if account is excluded from Form1099. | [optional] |
| **exclude_from_pay_in_full** | **Boolean** | Indicates if account is excluded from paying in full. | [optional] |
| **exclude_late_fee** | **Boolean** | Indicates if excluding from late fees. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **late_fee_applicable** | **Boolean** | Indicates if a late fee is applicable. | [optional] |
| **name** | **String** | Account name. | [optional] |
| **parent_gl_account_id** | **Integer** | Parent account ID. | [optional] |
| **parent_ref** | **String** | Parent account reference. | [optional] |
| **payment_priority** | **Integer** | Account payment priority. | [optional] |
| **rent_account** | **Boolean** | Indicates if account is a rent account. | [optional] |
| **section8** | **Boolean** | Indicates if account is a section8 account. | [optional] |
| **security_deposit_account** | **Boolean** | Indicates if the account is security deposit account | [optional] |
| **tax_account** | **Boolean** | Indicates if account is a tax account. | [optional] |
| **transfer_balance_to_retained_earnings** | **Boolean** | Indicates if the account balance should be transferred to retained earnings. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Account.new(
  account_code: null,
  account_number: null,
  account_type: null,
  active: false,
  auto_apply_prepayment: false,
  bank_account_holder: null,
  bank_account_number: null,
  bank_address: null,
  bank_address2: null,
  bank_city: null,
  bank_institution: null,
  bank_routing_number: null,
  bank_state: null,
  bank_zip: null,
  cam_recovery_account: false,
  created_by: null,
  created_date_time: null,
  description: null,
  discount_account: false,
  escrow_account: false,
  exclude_from1099: false,
  exclude_from_pay_in_full: false,
  exclude_late_fee: false,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  late_fee_applicable: false,
  name: null,
  parent_gl_account_id: null,
  parent_ref: null,
  payment_priority: null,
  rent_account: false,
  section8: false,
  security_deposit_account: false,
  tax_account: false,
  transfer_balance_to_retained_earnings: false
)
```

