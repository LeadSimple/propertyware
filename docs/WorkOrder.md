# Propertyware::WorkOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **age** | **Integer** | Number of days that have passed since the work order was created. | [optional] |
| **approved** | **Boolean** | Indicates if work order is approved. | [optional] |
| **approved_date** | **Date** | Work order approved Date. | [optional] |
| **assigned_vendors** | [**Array&lt;BasicVendor&gt;**](BasicVendor.md) | List of vendors attached to the work order. | [optional] |
| **authorize_enter** | **String** | Indicates if the tenant has granted your management staff access to enter his or her buildings and/or units. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this work order. | [optional] |
| **category** | **String** | This classifies the work order into a category. | [optional] |
| **completed_date** | **Date** | Date on which the work was completed. | [optional] |
| **contract_number** | **String** | Contract number. | [optional] |
| **cost_estimate** | **Float** | This indicates the estimated cost as entered by a person, the actual cost as determined by the work order bills, and the invoiced amount is the amount the owner will see on his or her statement based on the bill and markup/discount amount. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **date_to_enter** | **Time** | Authorized date to enter unit. | [optional] |
| **description** | **String** | This is a detailed description of the problem. | [optional] |
| **hour_estimate** | **Float** | Expected number of hours to complete the work order. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease** | **String** | If the work order is attached to an occupied building or unit, this is the lease name of that lease. | [optional] |
| **location** | **String** | Buildings and/or units associated with this work order. | [optional] |
| **maintenance_notice** | **String** | Maintenance notice defined for the building that the work order is attached to. | [optional] |
| **managed_by** | **String** | Name of the person who is responsible for managing the work order. | [optional] |
| **number** | **Integer** | Number assigned to this work order. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this work order. | [optional] |
| **priority** | **String** | This identifies the priority of the work order as low, medium, or high. | [optional] |
| **publish_to_owner_portal** | **Boolean** | Publish To Owner Portal. | [optional] |
| **publish_to_tenant_portal** | **Boolean** | Publish To Tenant Portal. | [optional] |
| **requested_by** | **String** | This identifies the person that reported the problem, typically the tenant or owner associated with the buildings or units. | [optional] |
| **required_materials** | **String** | List of materials required to complete the work order. | [optional] |
| **scheduled_end_date** | **Date** | Date on which the work is scheduled to be completed. | [optional] |
| **search_tag** | **String** | Search tag name. | [optional] |
| **source** | **String** | This identifies how the problem was reported, such as telephone, in person, email, etc. | [optional] |
| **specific_location** | **String** | This describes the location in the buildings or units where the work is needed. | [optional] |
| **start_date** | **Date** | Date on which the work was started. | [optional] |
| **status** | **String** | Current status of the work order. | [optional] |
| **type** | **String** | This classifies the work order into one of the following types: general, service request, turnover, inspection, estimate etc. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with this work order. | [optional] |
| **unit_ids** | **Object** |  | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::WorkOrder.new(
  age: null,
  approved: false,
  approved_date: null,
  assigned_vendors: null,
  authorize_enter: null,
  building_id: null,
  category: null,
  completed_date: null,
  contract_number: null,
  cost_estimate: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  date_to_enter: null,
  description: null,
  hour_estimate: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease: null,
  location: null,
  maintenance_notice: null,
  managed_by: null,
  number: null,
  portfolio_id: null,
  priority: null,
  publish_to_owner_portal: false,
  publish_to_tenant_portal: false,
  requested_by: null,
  required_materials: null,
  scheduled_end_date: null,
  search_tag: null,
  source: null,
  specific_location: null,
  start_date: null,
  status: null,
  type: null,
  unit_id: null,
  unit_ids: null
)
```

