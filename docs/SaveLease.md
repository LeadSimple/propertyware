# Propertyware::SaveLease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_rent** | **Float** | Property base rent. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **end_date** | **Date** | End date of the lease term. |  |
| **leasing_fee_amount** | **Float** | Move in leasing fee amount. | [optional] |
| **leasing_fee_date** | **Date** | Move in leasing fee post date. | [optional] |
| **leasing_fee_ref_no** | **String** | Move in leasing fee reference number. | [optional] |
| **move_in_date** | **Date** | Move In Date. |  |
| **move_out_date** | **Date** | Move Out Date. | [optional] |
| **notice_given_date** | **Date** | Day that the tenant(s) turned in a notice to vacate. Used only for Updating a Lease. | [optional] |
| **payment_restriction** | **String** | Indicates if the lease has any payment types that they are prevented from using. For example, a lease with several bounced checks may be restricted from paying with checks for future payments.&lt;/br&gt;Allowed values are &lt;br/&gt;(1) None&lt;br/&gt;(2) No Payment Allowed&lt;br/&gt;(3) One or more values separated by comma - Check/Credit Card/Cash/Cashiers Check/Money Order/Section 8/Public Assistance/EPay/RentMoneyOther | [optional] |
| **post_first_charge** | **Boolean** | Indicates how to post first rent charge while move in. | [optional] |
| **primary_contact_id** | **Integer** | Primary contact ID, Should be one of tenant IDs. |  |
| **prorate_month** | **String** | Indicates how to post first rent charge while move in. | [optional] |
| **public_assistance_program** | **String** | Public assistance program. Allowed values are &#39;None&#39;, &#39;Section 8&#39;, &#39;SCRIE&#39;, &#39;Rent Control&#39;, &#39;EDEN INC. - Shelter Care Plus&#39;, &#39;CLC&#39;, &#39;DHAP&#39;, &#39;FEMA&#39;, &#39;Harris County&#39; etc.  | [optional] |
| **reason_for_leaving** | **String** | Reason for vacating the property. Used only for Updating a Lease.&lt;Br&gt; Allowed values: BOUGHT HOUSE, DECEASED, EVICTION, HEALTH, MOVE CITY, PERSONAL, TOO EXPENSIVE, TRANSFER UNIT, UNKNOWN etc. | [optional] |
| **rent_auto_charge** | [**SaveAutoCharge**](SaveAutoCharge.md) |  | [optional] |
| **schedule_move_out_date** | **Date** | Scheduled move out date. | [optional] |
| **search_tag** | **String** | Search tag. | [optional] |
| **sec_dep_amount** | **Float** | Move in security deposit amount. | [optional] |
| **sec_dep_charge_date** | **Date** | Move in security deposit charge date. | [optional] |
| **signed_date** | **Date** | Lease signed date. | [optional] |
| **start_date** | **Date** | Start date of the lease term. |  |
| **status** | **String** | Indicates lease status. Allowed values are &#39;Active&#39;, &#39;Active - Notice Given&#39;, &#39;Draft&#39;, &#39;Eviction&#39;, &#39;Terminated&#39; etc.  | [optional] |
| **tenant_ids** | **Array&lt;Integer&gt;** | List of tenant IDs. |  |
| **unit_id** | **Integer** | Unit/Building ID associated with this lease. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveLease.new(
  base_rent: null,
  comments: null,
  end_date: null,
  leasing_fee_amount: null,
  leasing_fee_date: null,
  leasing_fee_ref_no: null,
  move_in_date: null,
  move_out_date: null,
  notice_given_date: null,
  payment_restriction: null,
  post_first_charge: false,
  primary_contact_id: null,
  prorate_month: null,
  public_assistance_program: null,
  reason_for_leaving: null,
  rent_auto_charge: null,
  schedule_move_out_date: null,
  search_tag: null,
  sec_dep_amount: null,
  sec_dep_charge_date: null,
  signed_date: null,
  start_date: null,
  status: null,
  tenant_ids: null,
  unit_id: null
)
```

