# Propertyware::Lease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if lease is Active. | [optional] |
| **addendums** | [**Array&lt;LeaseClause&gt;**](LeaseClause.md) | Lease addendum(s). | [optional] |
| **ar_balance** | **Float** | Lease Accounts Receivable Balance | [optional] |
| **base_rent** | **Float** | Property base rent. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this lease. | [optional] |
| **comments** | **String** | Description of the lease. | [optional] |
| **contacts** | [**Array&lt;LeaseContact&gt;**](LeaseContact.md) | List of the current tenants on the lease. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **end_date** | **Date** | End date of the lease term. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **id_number** | **Integer** | Lease identification number. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **late_fee_rule** | **String** | Textual description of the late fee rule applied to delinquent or unpaid lease charges. | [optional] |
| **lease_balance** | **Float** | Lease Balance. | [optional] |
| **lease_name** | **String** | Lease Name. | [optional] |
| **location** | **String** | Building and/or units the lease is currently attached to. | [optional] |
| **move_in_date** | **Date** | Day that the tenant(s) moved into the property. | [optional] |
| **move_out_date** | **Date** | Day that the tenant(s) vacated the property. | [optional] |
| **notice_given_date** | **Date** | Day that the tenant(s) turned in a notice to vacate. | [optional] |
| **payment_restriction** | **String** | Indicates if the lease has any payment types that they are prevented from using. For example, a lease with several bounced checks may be restricted from paying with checks for future payments. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this lease. | [optional] |
| **public_assistance_program** | **String** | Indicates if the tenant(s) of the lease receive any aid from a Public Assistance Program. | [optional] |
| **reason_for_leaving** | **String** | Reason for vacating the property. | [optional] |
| **schedule_move_out_date** | **Date** | Day that the tenant(s) are expected to vacate the property. | [optional] |
| **search_tag** | **String** | Search tag. | [optional] |
| **signed_date** | **Date** | Lease signed date. | [optional] |
| **start_date** | **Date** | Start date of the lease term. | [optional] |
| **status** | **String** | Lease&#39;s current status. | [optional] |
| **tenants_opts_into_asset_protection_plan** | **String** | Indicates if the tenants opted into Asset Protection Plan. | [optional] |
| **terminated_date** | **Date** | Lease Terminated Date. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with this lease. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Lease.new(
  active: false,
  addendums: null,
  ar_balance: null,
  base_rent: null,
  building_id: null,
  comments: null,
  contacts: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  end_date: null,
  id: null,
  id_number: null,
  last_modified_by: null,
  last_modified_date_time: null,
  late_fee_rule: null,
  lease_balance: null,
  lease_name: null,
  location: null,
  move_in_date: null,
  move_out_date: null,
  notice_given_date: null,
  payment_restriction: null,
  portfolio_id: null,
  public_assistance_program: null,
  reason_for_leaving: null,
  schedule_move_out_date: null,
  search_tag: null,
  signed_date: null,
  start_date: null,
  status: null,
  tenants_opts_into_asset_protection_plan: null,
  terminated_date: null,
  unit_id: null
)
```

