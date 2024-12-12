# Propertyware::TimeCardEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** | Bill ID. | [optional] |
| **comments** | **String** | Time card Entry Comments. | [optional] |
| **hourly_rate** | **Float** | Hourly Rate. | [optional] |
| **hourly_surcharge** | **Float** | Hourly Surcharge. | [optional] |
| **hours** | **Float** | Hours. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **vendor_id** | **Integer** | This is required field. Specifies the Vendor for a time card entry. |  |
| **work_date** | **Time** | Work Date. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::TimeCardEntry.new(
  bill_id: null,
  comments: null,
  hourly_rate: null,
  hourly_surcharge: null,
  hours: null,
  id: null,
  vendor_id: null,
  work_date: null
)
```

