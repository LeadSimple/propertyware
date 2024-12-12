# Propertyware::Building

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abbreviation** | **String** | Property abbreviation. | [optional] |
| **active** | **Boolean** | Indicates if the property is active or inactive. | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **amenities** | [**Array&lt;Amenity&gt;**](Amenity.md) | Property amenities list. | [optional] |
| **application_fee_rule** | **String** | Application fee rule | [optional] |
| **area_units** | **String** | Property total area units. | [optional][default to &#39;Sq Ft&#39;] |
| **base_year** | **Integer** | Base Year. | [optional] |
| **base_year_operating_expenses** | **String** | Base Year Operating Expenses. | [optional] |
| **base_year_property_insurance** | **String** | Base Year Property Insurance. | [optional] |
| **base_year_property_taxes** | **String** | Base Year Property Taxes. | [optional] |
| **category** | **String** | Property category. | [optional] |
| **count_unit** | **Integer** | Number of units in the building. | [optional] |
| **county** | **String** | Property region of a state. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **featured_for_rent** | **Boolean** | Featured Rental | [optional] |
| **floor_number** | **Integer** | Floor number. | [optional] |
| **ftb_deductable** | **Float** | FTB deductible amount | [optional] |
| **ftb_withholding_percentage** | **Float** | FTB withholding percentage | [optional] |
| **ftb_withholding_type** | **String** | FTB withholding type | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **id_number** | **Integer** | Unique identifier for Global Search. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Related lease ID. | [optional] |
| **maintenance_labor_surcharge_amount** | **Float** | Maintenance labor surcharge amount | [optional] |
| **maintenance_labor_surcharge_type** | **String** | Maintenance labor surcharge type | [optional] |
| **maintenance_notice** | **String** | Property maintenance description. | [optional] |
| **maintenance_spending_limit_amount** | **Float** | Maintenance spending limit amount | [optional] |
| **maintenance_spending_limit_time** | **String** | Property maintenance spending limit. | [optional] |
| **management** | [**ManagementSettings**](ManagementSettings.md) |  | [optional] |
| **marketing** | [**Marketing**](Marketing.md) |  | [optional] |
| **move_in_days** | **Integer** | Move in Window must be with in these days given here 1 to 30 and 45,60,75,90 | [optional] |
| **multi_unit** | **String** | Indicates if the building is multi family or single family. | [optional] |
| **name** | **String** | Name of the property. | [optional] |
| **neighborhood** | **String** | Property neighborhood. | [optional] |
| **number_floors** | **Integer** | Number floors | [optional] |
| **number_of_bathrooms** | **Float** | Number of bathrooms in the property. | [optional] |
| **number_of_bedrooms** | **Integer** | Number of bedrooms in the property. | [optional] |
| **portfolio_id** | **Integer** | ID of the portfolio associated with this property. | [optional] |
| **property_manager_list** | [**Array&lt;PropertyManager&gt;**](PropertyManager.md) | Property manager details. | [optional] |
| **property_type** | **String** | Type of property. | [optional] |
| **ready** | **Boolean** | Indicates if the property is ready to lease. | [optional] |
| **reason_for_property_lost** | **String** | Reason for property lost | [optional] |
| **rentable** | **Boolean** | Indicates if the property is available for rent. | [optional] |
| **search_tag** | **String** | Property search tag. | [optional] |
| **status** | **String** | Property status (occupied/vacant). | [optional] |
| **syndicate** | **Boolean** | Syndicate | [optional] |
| **target_deposit** | **String** | Target deposit. | [optional] |
| **target_rent** | **Float** | Property target rent. | [optional] |
| **target_rent_units** | **String** | Property target rent units. | [optional] |
| **total_area** | **Float** | Property total area. | [optional] |
| **type** | **String** | Property type. | [optional] |
| **website** | **String** | Property website URL. | [optional] |
| **year_built** | **Integer** | Property built year. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Building.new(
  abbreviation: null,
  active: false,
  address: null,
  amenities: null,
  application_fee_rule: null,
  area_units: null,
  base_year: null,
  base_year_operating_expenses: null,
  base_year_property_insurance: null,
  base_year_property_taxes: null,
  category: null,
  count_unit: null,
  county: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  featured_for_rent: false,
  floor_number: null,
  ftb_deductable: null,
  ftb_withholding_percentage: null,
  ftb_withholding_type: null,
  id: null,
  id_number: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  maintenance_labor_surcharge_amount: null,
  maintenance_labor_surcharge_type: null,
  maintenance_notice: null,
  maintenance_spending_limit_amount: null,
  maintenance_spending_limit_time: null,
  management: null,
  marketing: null,
  move_in_days: null,
  multi_unit: null,
  name: null,
  neighborhood: null,
  number_floors: null,
  number_of_bathrooms: null,
  number_of_bedrooms: null,
  portfolio_id: null,
  property_manager_list: null,
  property_type: null,
  ready: false,
  reason_for_property_lost: null,
  rentable: false,
  search_tag: null,
  status: null,
  syndicate: false,
  target_deposit: null,
  target_rent: null,
  target_rent_units: null,
  total_area: null,
  type: null,
  website: null,
  year_built: null
)
```

