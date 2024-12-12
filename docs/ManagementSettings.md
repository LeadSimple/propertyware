# Propertyware::ManagementSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **management_contract_end_date** | **Date** | End date of the property contract. | [optional] |
| **management_contract_start_date** | **Date** | Start date of the property contract. | [optional] |
| **management_fee_type** | **String** | Indicates the type of management fee. This field is deprecated and should not be used. Instead, use the new field &#39;managementFeesType&#39;.  | [optional] |
| **management_fees** | [**Array&lt;ManagementFee&gt;**](ManagementFee.md) | List of property management fee rules. | [optional] |
| **management_fees_type** | **String** | Indicates the type of management fee. | [optional] |
| **management_flat_fee** | **Float** | Flat management fee amount. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ManagementSettings.new(
  management_contract_end_date: null,
  management_contract_start_date: null,
  management_fee_type: null,
  management_fees: null,
  management_fees_type: null,
  management_flat_fee: null
)
```

