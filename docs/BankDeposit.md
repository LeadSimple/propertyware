# Propertyware::BankDeposit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date_opened** | **String** | Date opened. | [optional] |
| **description** | **String** | Description. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **name** | **String** | Bank deposit name. | [optional] |
| **status** | **String** | Status. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::BankDeposit.new(
  created_by: null,
  created_date_time: null,
  date_opened: null,
  description: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  name: null,
  status: null
)
```

