# Propertyware::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Id of the contact associated with this payment. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Post date. |  |
| **deposit_date** | **Date** | Date the payment was deposited. | [optional] |
| **destination_account_id** | **Integer** | Id of the bank account where the payment was deposited. | [optional] |
| **gl_account_id** | **Integer** | General Ledger Account ID. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **is_deposited** | **Boolean** | Indicates if the payment has been deposited. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this payment. | [optional] |
| **lines** | [**Array&lt;LineItem&gt;**](LineItem.md) | A collection of payment line items. | [optional] |
| **payment_type** | **String** | Payment type. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this transaction. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **status** | **String** | Lease status. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Payment.new(
  amount: null,
  comments: null,
  contact_id: null,
  created_by: null,
  created_date_time: null,
  date: null,
  deposit_date: null,
  destination_account_id: null,
  gl_account_id: null,
  id: null,
  is_deposited: false,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  lines: null,
  payment_type: null,
  portfolio_id: null,
  ref_no: null,
  status: null
)
```

