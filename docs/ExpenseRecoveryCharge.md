# Propertyware::ExpenseRecoveryCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Post date. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this charge. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this charge. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ExpenseRecoveryCharge.new(
  amount: null,
  comments: null,
  date: null,
  gl_account_id: null,
  id: null,
  lease_id: null
)
```

