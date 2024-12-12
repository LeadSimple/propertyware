# Propertyware::SaveCustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Unique identifier of an entity custom field associated to. |  |
| **field_set** | [**Array&lt;CustomFieldSet&gt;**](CustomFieldSet.md) | List of Custom fields to update |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveCustomField.new(
  entity_id: null,
  field_set: null
)
```

