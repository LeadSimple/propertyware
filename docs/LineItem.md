# Propertyware::LineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Id of the building associated with this entry. | [optional] |
| **credit** | **Float** | Credit amount. | [optional] |
| **debit** | **Float** | Debit amount. | [optional] |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this entry. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this entry. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with this entry. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::LineItem.new(
  building_id: null,
  credit: null,
  debit: null,
  gl_account_id: null,
  id: null,
  portfolio_id: null,
  unit_id: null
)
```

