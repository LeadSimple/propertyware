# Propertyware::LeaseContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company** | **String** | Company where the contact is employed. | [optional] |
| **email** | **String** | E-mail address. | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **home_phone** | **String** | Home phone. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **mobile_phone** | **String** | Mobile phone. | [optional] |
| **named_on_lease** | **Boolean** | Indicates if contact is named on lease. | [optional] |
| **primary** | **Boolean** | Indicates if contact is primary contact of the lease. | [optional] |
| **role** | **String** | Role. | [optional] |
| **work_phone** | **String** | Work phone. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::LeaseContact.new(
  company: null,
  email: null,
  first_name: null,
  home_phone: null,
  id: null,
  last_name: null,
  mobile_phone: null,
  named_on_lease: false,
  primary: false,
  role: null,
  work_phone: null
)
```

