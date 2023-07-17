# Propertyware::OwnerContribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Id of the contact associated with this owner contribution. |  |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Post date. |  |
| **destination_account_id** | **Integer** | Id of the bank account where the payment will be deposited. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this owner contribution. |  |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **payment_type** | **String** | Payment type. |  |
| **portfolio_id** | **Integer** | Id of the portfolio to apply the payment to. |  |
| **ref_no** | **String** | Reference number. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::OwnerContribution.new(
  amount: null,
  comments: null,
  contact_id: null,
  created_by: null,
  created_date_time: null,
  date: null,
  destination_account_id: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  payment_type: null,
  portfolio_id: null,
  ref_no: null
)
```

