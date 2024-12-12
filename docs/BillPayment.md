# Propertyware::BillPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Payment amount. | [optional] |
| **bills** | [**Array&lt;BillPaid&gt;**](BillPaid.md) | List of bills that were paid. | [optional] |
| **check_number** | **String** | Payment check number. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lines** | [**Array&lt;LineItem&gt;**](LineItem.md) | A collection of payment line items. | [optional] |
| **memo** | **String** | Memo. | [optional] |
| **name_on_check** | **String** | Name on check. | [optional] |
| **payment_account_id** | **Integer** | Id of the payment general ledger account. | [optional] |
| **payment_date** | **Date** | Payment date. | [optional] |
| **payment_method** | **String** | Payment method. | [optional] |
| **to_be_printed** | **Boolean** | Indicates if the check should be printed. | [optional] |
| **vendor_id** | **Integer** | Id of the vendor associated with this payment. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::BillPayment.new(
  amount: null,
  bills: null,
  check_number: null,
  created_by: null,
  created_date_time: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lines: null,
  memo: null,
  name_on_check: null,
  payment_account_id: null,
  payment_date: null,
  payment_method: null,
  to_be_printed: false,
  vendor_id: null
)
```

