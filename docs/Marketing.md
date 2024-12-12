# Propertyware::Marketing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_date** | **Date** | Available date to lease for a unit/building. | [optional] |
| **comments** | **String** | Marketing description. | [optional] |
| **featured** | **Boolean** | Indicates if property is featured for rent or sale. | [optional] |
| **featured_for_rent** | **Boolean** | Indicates if the unit/building is featured for rent. | [optional] |
| **featured_for_sale** | **Boolean** | Indicates if unit/building is featured for sale. | [optional] |
| **for_sale** | **Boolean** | Indicates if this building/unit is for sale. | [optional] |
| **latitude** | **Float** | Latitude for geolocation of this building/unit. | [optional] |
| **lease_terms** | **Integer** | Lease terms of a unit/building. | [optional] |
| **lease_terms_units** | **String** | Unit/building lease terms units. | [optional] |
| **longitude** | **Float** | Longitude for geolocation of this building/unit. | [optional] |
| **marketing_name** | **String** | Marketing name. | [optional] |
| **mls_lease_number** | **String** | MLS lease number of this building/unit. | [optional] |
| **mls_number** | **String** | MLS number of this building/unit. | [optional] |
| **other_tenant_charges** | **String** | Other tenant charges. | [optional] |
| **parcel_number** | **String** | Parcel number of this building/unit. | [optional] |
| **pets_allowed** | **Boolean** | Indicates if pets are allowed in a unit/building. | [optional] |
| **posting_title** | **String** | Posting title name for marketing this building/unit. | [optional] |
| **published_for_rent** | **Boolean** | Published For Rent | [optional] |
| **published_for_sale** | **Boolean** | Indicates if the unit/building is published for sale. | [optional] |
| **sale_price** | **Float** | Sale price of this building/unit. | [optional] |
| **sale_terms** | **String** | Sale terms of this building/unit. | [optional] |
| **short_description** | **String** | Marketing short description. | [optional] |
| **smoking_allowed** | **Boolean** | Indicates if smoking is allowed in this unit/building. | [optional] |
| **specials** | **String** | Specials of this building/unit. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Marketing.new(
  available_date: null,
  comments: null,
  featured: false,
  featured_for_rent: false,
  featured_for_sale: false,
  for_sale: false,
  latitude: null,
  lease_terms: null,
  lease_terms_units: null,
  longitude: null,
  marketing_name: null,
  mls_lease_number: null,
  mls_number: null,
  other_tenant_charges: null,
  parcel_number: null,
  pets_allowed: false,
  posting_title: null,
  published_for_rent: false,
  published_for_sale: false,
  sale_price: null,
  sale_terms: null,
  short_description: null,
  smoking_allowed: false,
  specials: null
)
```

