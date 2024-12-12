# Propertyware::SaveAutoCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Auto charge amount. |  |
| **description** | **String** | Description of the auto charge. | [optional] |
| **due_day** | **Integer** | Charge due day. Allowed values : For frequency \&quot;Weekly\&quot; (1 to 7) , for other frequency (1 to 31) |  |
| **end_date** | **Date** | Auto charge end date. | [optional] |
| **frequency** | **String** | Charge frequency. |  |
| **gl_account_id** | **Integer** | GL Account ID. |  |
| **reference_number** | **String** | Reference number. | [optional] |
| **start_date** | **Date** | Auto charge start date. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveAutoCharge.new(
  amount: null,
  description: null,
  due_day: null,
  end_date: null,
  frequency: null,
  gl_account_id: null,
  reference_number: null,
  start_date: null
)
```

