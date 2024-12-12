# Propertyware::CloseWorkOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | This classifies the work order into a category. | [optional] |
| **comments** | **String** | Comments for closing workorder. | [optional] |
| **completed_date** | **Date** | Date on which the work was completed. | [optional] |
| **start_date** | **Date** | Date on which the work was started. | [optional] |
| **time_card_entry** | [**Array&lt;TimeCardEntry&gt;**](TimeCardEntry.md) | List of TimeCard Entries to update |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::CloseWorkOrder.new(
  category: null,
  comments: null,
  completed_date: null,
  start_date: null,
  time_card_entry: null
)
```

