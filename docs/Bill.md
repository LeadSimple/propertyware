# Propertyware::Bill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. | [optional] |
| **bill_date** | **Date** | Entry date. | [optional] |
| **bill_number** | **Integer** | Number. | [optional] |
| **bill_splits** | [**Array&lt;BillSplit&gt;**](BillSplit.md) | List of bill splits. | [optional] |
| **comments** | **String** | Description. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **credit** | **Boolean** | Indicates if the bill is a vendor credit. | [optional] |
| **due_date** | **Date** | Due date. | [optional] |
| **expense_recoveries** | [**Array&lt;ExpenseRecoveryCharge&gt;**](ExpenseRecoveryCharge.md) | List of expense recoveries | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **markup_gl_account_id** | **Integer** | The ID of the markup/discount general ledger account associated with the bill. | [optional] |
| **markup_percentage** | **Float** | The markup percentage. | [optional] |
| **payment_date** | **Date** | Date the bill was paid. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **terms** | **String** | Bill terms. | [optional] |
| **vendor_id** | **Integer** | The ID of the vendor related to the bill. | [optional] |
| **work_order_id** | **Integer** | The ID of the work order associated with the bill. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Bill.new(
  amount: null,
  bill_date: null,
  bill_number: null,
  bill_splits: null,
  comments: null,
  created_by: null,
  created_date_time: null,
  credit: false,
  due_date: null,
  expense_recoveries: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  markup_gl_account_id: null,
  markup_percentage: null,
  payment_date: null,
  ref_no: null,
  terms: null,
  vendor_id: null,
  work_order_id: null
)
```

