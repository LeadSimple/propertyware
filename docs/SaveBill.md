# Propertyware::SaveBill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_date** | **Date** | Bill date. |  |
| **bill_number** | **Integer** | Bill number. | [optional] |
| **bill_splits** | [**Array&lt;SaveBillSplit&gt;**](SaveBillSplit.md) | Splits list. |  |
| **comments** | **String** | Description. | [optional] |
| **due_date** | **Date** | Bill Due date. |  |
| **markup_account_id** | **Integer** | Markup general ledger account ID. | [optional] |
| **markup_percentage** | **Float** | Markup percentage. | [optional] |
| **payment_date** | **Date** | Payment Date. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **terms** | **String** | Bill terms. | [optional] |
| **vendor_id** | **Integer** | Related vendor ID. |  |
| **work_order_id** | **Integer** | WorkOrder ID associated to this Bill. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBill.new(
  bill_date: null,
  bill_number: null,
  bill_splits: null,
  comments: null,
  due_date: null,
  markup_account_id: null,
  markup_percentage: null,
  payment_date: null,
  ref_no: null,
  terms: null,
  vendor_id: null,
  work_order_id: null
)
```

