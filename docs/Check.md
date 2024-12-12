# Propertyware::Check

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **check_splits** | [**Array&lt;CheckSplit&gt;**](CheckSplit.md) | List of check splits. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Post date. |  |
| **destination_account_id** | **Integer** | ID of the bank general ledger account where the payment will be made from. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **payee_payer** | **String** | Name of the payee or payer. | [optional] |
| **payment_type** | **String** | Type of payment. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this transaction. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **to_be_printed** | **Boolean** | Indicates if the check is to be printed. | [optional] |
| **vendor_id** | **Integer** | Id of the vendor associated with this check. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Check.new(
  amount: null,
  check_splits: null,
  comments: null,
  created_by: null,
  created_date_time: null,
  date: null,
  destination_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  payee_payer: null,
  payment_type: null,
  portfolio_id: null,
  ref_no: null,
  to_be_printed: false,
  vendor_id: null
)
```

