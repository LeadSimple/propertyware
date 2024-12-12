# Propertyware::SaveBuilding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abbreviation** | **String** | Abbreviation of Building. |  |
| **address** | [**SaveAddress**](SaveAddress.md) |  | [optional] |
| **allocation_method** | **String** | Allocation method. | [optional] |
| **available_date** | **Date** | Date the building is available for leasing. | [optional] |
| **base_year** | **Integer** | Base Year. | [optional] |
| **base_year_operating_expenses** | **String** | Base Year Operating Expenses. | [optional] |
| **base_year_property_insurance** | **String** | Base Year Property Insurance. | [optional] |
| **base_year_property_taxes** | **String** | Base Year Property Taxes. | [optional] |
| **category** | **String** | Building category. |  |
| **count_unit** | **Integer** | Indicates number of units in the building. Applicable for multi unit building creation and updating a single family building to multi unit building |  |
| **custom_naming** | **String** | if we selected naming as \&quot;Custom\&quot; then enter the customer naming value  | [optional] |
| **description** | **String** | Marketing description. | [optional] |
| **featured_for_rent** | **Boolean** | Featured Rental | [optional] |
| **floor_number** | **Integer** | Floor number. | [optional] |
| **management_contract_end_date** | **Date** | End date of the property contract. | [optional] |
| **management_contract_start_date** | **Date** | Start date of the property contract. | [optional] |
| **management_fee_type** | **String** | Indicates management fee type of a building. This field is deprecated and should not be used. Instead, use the new field &#39;managementFeesType&#39;.   | [optional] |
| **management_fees_type** | **String** | Indicates management fee type of a building. | [optional] |
| **management_flat_fee** | **Float** | Indicates management flat fee. | [optional] |
| **marketing_name** | **String** | Marketing name. | [optional] |
| **move_in_days** | **Integer** | Move in Window must be with in these days given here 1 to 30 and 45,60,75,90 | [optional] |
| **name** | **String** | Name of the building. |  |
| **naming** | **String** | Unit naming | [optional] |
| **neighborhood** | **String** | Neighborhood. | [optional] |
| **number_bathrooms** | **Float** | Number of Bath rooms in the Building. Applicable for single family buildings | [optional] |
| **number_bedrooms** | **Integer** | Number of bedrooms in the building. Applicable for single family buildings | [optional] |
| **number_floors** | **Integer** | Number of floors. | [optional] |
| **numbered** | **String** | Unit creation format. | [optional] |
| **other_tenant_charges** | **String** | Other tenant charges. | [optional] |
| **parcel_number** | **String** | Parcel number. | [optional] |
| **pets_allowed** | **Boolean** | Pets allowed. | [optional] |
| **portfolio_id** | **Integer** | ID of the portfolio associated with this building. |  |
| **posting_title** | **String** | Marketing posting title. | [optional] |
| **property_type** | **String** | Property type. |  |
| **published_for_rent** | **String** | Published for rent. | [optional] |
| **ready** | **Boolean** | Ready to Lease | [optional] |
| **rentable** | **Boolean** | This is required field. False value indicates Multifamily building, True value indicates single family building. |  |
| **search_tag** | **String** | Search tag name. | [optional] |
| **short_description** | **String** | Marketing short description. | [optional] |
| **syndicate** | **Boolean** | Syndicate | [optional] |
| **target_deposit** | **String** | Target deposit amount. Applicable for single family buildings | [optional] |
| **target_rent** | **Float** | Market rent for the building. Applicable for single family buildings | [optional] |
| **target_rent_units** | **String** | Property target rent units. Applicable for single family buildings | [optional] |
| **total_area** | **Float** | Building area. | [optional] |
| **type** | **String** | Indicates Building type like Office, Industrial, Retail, Healthcare, Government, Airport, Garage/Parking, Apartment Building, Duplex / Triplex, Mobile Home / RV Community etc. |  |
| **unit_type** | **String** | Indicates Unit type like Condo,Lower Unit,Side By Side Duplex,Upper Unit,Townhome,Land,Commercial etc. | [optional] |
| **year_built** | **Integer** | Building built year. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBuilding.new(
  abbreviation: null,
  address: null,
  allocation_method: null,
  available_date: null,
  base_year: null,
  base_year_operating_expenses: null,
  base_year_property_insurance: null,
  base_year_property_taxes: null,
  category: null,
  count_unit: null,
  custom_naming: null,
  description: null,
  featured_for_rent: false,
  floor_number: null,
  management_contract_end_date: null,
  management_contract_start_date: null,
  management_fee_type: null,
  management_fees_type: null,
  management_flat_fee: null,
  marketing_name: null,
  move_in_days: null,
  name: null,
  naming: null,
  neighborhood: null,
  number_bathrooms: null,
  number_bedrooms: null,
  number_floors: null,
  numbered: null,
  other_tenant_charges: null,
  parcel_number: null,
  pets_allowed: false,
  portfolio_id: null,
  posting_title: null,
  property_type: null,
  published_for_rent: null,
  ready: false,
  rentable: false,
  search_tag: null,
  short_description: null,
  syndicate: false,
  target_deposit: null,
  target_rent: null,
  target_rent_units: null,
  total_area: null,
  type: null,
  unit_type: null,
  year_built: null
)
```

