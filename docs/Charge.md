# Propertyware::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Auto charge amount. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **description** | **String** | Description of the auto charge. | [optional] |
| **due_day** | **Integer** | Description of the day when the auto charge is due. | [optional] |
| **end_date** | **Date** | End date of auto charge. | [optional] |
| **frequency** | **String** | Frequency of the auto charge. |  |
| **gl_account_id** | **Integer** | ID of the General Ledger Account associated to this auto charge. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **last_post_date** | **Date** | Last post date. | [optional] |
| **lease_id** | **Integer** | ID of the lease associated to auto charge | [optional] |
| **reference_number** | **String** | Reference number. | [optional] |
| **start_date** | **Date** | Start date of auto charge. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Charge.new(
  amount: null,
  created_by: null,
  created_date_time: null,
  description: null,
  due_day: null,
  end_date: null,
  frequency: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  last_post_date: null,
  lease_id: null,
  reference_number: null,
  start_date: null
)
```

