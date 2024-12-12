# Propertyware::SaveCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_date** | **Date** | Credit Date. |  |
| **bill_splits** | [**Array&lt;SaveBillSplit&gt;**](SaveBillSplit.md) | Splits list. |  |
| **comments** | **String** | Description. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **vendor_id** | **Integer** | Related vendor ID. |  |
| **work_order_id** | **Integer** | Related workorder ID. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveCredit.new(
  bill_date: null,
  bill_splits: null,
  comments: null,
  ref_no: null,
  vendor_id: null,
  work_order_id: null
)
```

