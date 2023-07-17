# Propertyware::SaveBillSplit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Split amount. |  |
| **amount_paid** | **Float** | Split amount paid. | [optional] |
| **building_id** | **Integer** | Location Building ID. | [optional] |
| **comments** | **String** | Split comments. | [optional] |
| **gl_account_id** | **Integer** | Split GL Account ID. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **markup_discount_split** | **Boolean** | Indicates if markup discount split. | [optional] |
| **paid** | **Boolean** | Indicates if Bill Split is paid. | [optional] |
| **portfolio_id** | **Integer** | Location Portfolio ID. |  |
| **unit_id** | **Integer** | Location Unit ID. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBillSplit.new(
  amount: null,
  amount_paid: null,
  building_id: null,
  comments: null,
  gl_account_id: null,
  id: null,
  markup_discount_split: false,
  paid: false,
  portfolio_id: null,
  unit_id: null
)
```

