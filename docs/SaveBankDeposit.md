# Propertyware::SaveBankDeposit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_gl_account_id** | **Integer** | Bank general ledger account ID. |  |
| **date_opened** | **Date** | Date opened. |  |
| **description** | **String** | Description | [optional] |
| **list_of_tx_ids** | **String** | Comma separated list of Transaction IDs. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBankDeposit.new(
  bank_gl_account_id: null,
  date_opened: null,
  description: null,
  list_of_tx_ids: null
)
```

