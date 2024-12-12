# Propertyware::ContactExtension

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) |  | [optional] |
| **allow_e_signature** | **Boolean** | Indicates if the contact can receive eSignature request e-mail messages sent through Propertyware. | [optional] |
| **alt_email** | **String** | Alternate e-mail address. | [optional] |
| **birth_date** | **Date** | Date of birth. | [optional] |
| **category** | **String** | Contact category. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **company** | **String** | Company where the contact is employed. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **email** | **String** | E-mail address. | [optional] |
| **fax** | **String** | Fax. | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **gender** | **String** | Gender. | [optional] |
| **home_phone** | **String** | Home phone. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **job_title** | **String** | Professional title or position for the contact. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **middle_name** | **String** | Middle name. | [optional] |
| **mobile_phone** | **String** | Mobile phone. | [optional] |
| **name_on_check** | **String** | Name on check. | [optional] |
| **named_on_lease** | **Boolean** | Indicates if contact is named on lease. | [optional] |
| **other_phone** | **String** | Other phone. | [optional] |
| **role** | **String** | Role. | [optional] |
| **salutation** | **String** | Salutation. | [optional] |
| **suffix** | **String** | Suffix. | [optional] |
| **type** | **String** | Contact type. | [optional] |
| **work_phone** | **String** | Work phone. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ContactExtension.new(
  address: null,
  allow_e_signature: false,
  alt_email: null,
  birth_date: null,
  category: null,
  comments: null,
  company: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  email: null,
  fax: null,
  first_name: null,
  gender: null,
  home_phone: null,
  id: null,
  job_title: null,
  last_modified_by: null,
  last_modified_date_time: null,
  last_name: null,
  middle_name: null,
  mobile_phone: null,
  name_on_check: null,
  named_on_lease: false,
  other_phone: null,
  role: null,
  salutation: null,
  suffix: null,
  type: null,
  work_phone: null
)
```

