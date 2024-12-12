# Propertyware::PaymentCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **Integer** | Id of the bank account where the payment was deposited. | [optional] |
| **amount** | **Float** | Total payment Amount. |  |
| **charge_amount_paid** | **Float** | Amount paid for this charge |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Payment applied date. |  |
| **id** | **Integer** | Payment ID | [optional] |
| **payee_payer** | **String** | Payer name. | [optional] |
| **payment_type** | **String** | Payment type. Electronic payments are only for book keeping. | [optional] |
| **receipt_number** | **Integer** | Payment receipt number. | [optional] |
| **ref_no** | **String** | Payment reference number. | [optional] |
| **settled_date** | **Date** | Payment settlement date. |  |
| **status** | **String** | Charge payment status. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::PaymentCharge.new(
  account_id: null,
  amount: null,
  charge_amount_paid: null,
  comments: null,
  date: null,
  id: null,
  payee_payer: null,
  payment_type: null,
  receipt_number: null,
  ref_no: null,
  settled_date: null,
  status: null
)
```

