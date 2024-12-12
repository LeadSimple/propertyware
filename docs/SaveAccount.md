# Propertyware::SaveAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Account number. |  |
| **account_type** | **Integer** | Valid account types - 1:Bank, 2:Credit Card, 5:Current Asset, 12:Non-Current Asset, 6:Current Liability, 13:Non-Current Liability, 7:Equity, 8:Income, 9:Expense, 10:Non-Operating Income, 11:Non-Operating Expense. |  |
| **auto_apply_prepayment** | **Boolean** | Indicates if prepayments should be auto applied. | [optional] |
| **bank** | [**Bank**](Bank.md) |  | [optional] |
| **code** | **String** | Account code. |  |
| **credit_card** | [**CreditCardAccount**](CreditCardAccount.md) |  | [optional] |
| **current_asset** | [**CurrentAsset**](CurrentAsset.md) |  | [optional] |
| **current_liability** | [**CurrentLiability**](CurrentLiability.md) |  | [optional] |
| **description** | **String** | Description. |  |
| **equity** | [**Equity**](Equity.md) |  | [optional] |
| **expense** | [**Expense**](Expense.md) |  | [optional] |
| **income** | [**Income**](Income.md) |  | [optional] |
| **non_current_asset** | [**NonCurrentAsset**](NonCurrentAsset.md) |  | [optional] |
| **non_current_liability** | [**NonCurrentLiability**](NonCurrentLiability.md) |  | [optional] |
| **non_operating_expense** | [**NonOperatingExpense**](NonOperatingExpense.md) |  | [optional] |
| **non_operating_income** | [**NonOperatingInome**](NonOperatingInome.md) |  | [optional] |
| **parent_gl_account_id** | **Integer** | Parent account ID. | [optional] |
| **taxable** | **Boolean** | Indicates if the account is taxable. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveAccount.new(
  account_number: null,
  account_type: null,
  auto_apply_prepayment: false,
  bank: null,
  code: null,
  credit_card: null,
  current_asset: null,
  current_liability: null,
  description: null,
  equity: null,
  expense: null,
  income: null,
  non_current_asset: null,
  non_current_liability: null,
  non_operating_expense: null,
  non_operating_income: null,
  parent_gl_account_id: null,
  taxable: false
)
```

