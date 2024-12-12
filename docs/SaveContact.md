# Propertyware::SaveContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**SaveAddress**](SaveAddress.md) |  | [optional] |
| **allow_e_signature** | **Boolean** | Indicate if the contact can receive eSignature request e-mail messages sent through Propertyware. | [optional] |
| **alt_email** | **String** | Alternate Email Address. | [optional] |
| **birth_date** | **Date** | Date of Birth. | [optional] |
| **category** | **String** | Indicate contact category. Send empty \&quot;\&quot; value if contact is Uncategorized. Applicable only for CREATE Contact. | [optional] |
| **comments** | **String** | Description. | [optional] |
| **company** | **String** | Company where the contact is employed. | [optional] |
| **email** | **String** | E-mail Address. | [optional] |
| **fax** | **String** | Fax. | [optional] |
| **first_name** | **String** | First Name. |  |
| **gender** | **String** | Gender. | [optional] |
| **home_phone** | **String** | Home Phone. | [optional] |
| **job_title** | **String** | Professional title or position for the contact. | [optional] |
| **last_name** | **String** | Last Name. |  |
| **middle_name** | **String** | Middle Name. | [optional] |
| **mobile_phone** | **String** | Mobile Phone. | [optional] |
| **name_on_check** | **String** | Name On Check. | [optional] |
| **named_on_lease** | **Boolean** | Is Named On Lease. | [optional] |
| **other_phone** | **String** | Other Phone. | [optional] |
| **salutation** | **String** | Salutation. Allowed values are : &#39;&#39;, &#39;Mr.&#39;, &#39;Mrs.&#39;, &#39;Ms.&#39;, &#39;Dr.&#39;, &#39;Prof.&#39; | [optional] |
| **search_tag** | **String** | SearchTag. | [optional] |
| **suffix** | **String** | Suffix. Allowed values are : &#39;&#39;, &#39;Jr.&#39;, &#39;Sr.&#39;, &#39;I&#39;, &#39;II&#39;, &#39;III&#39;, &#39;IV&#39; | [optional] |
| **work_phone** | **String** | Work Phone. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveContact.new(
  address: null,
  allow_e_signature: false,
  alt_email: null,
  birth_date: null,
  category: null,
  comments: null,
  company: null,
  email: null,
  fax: null,
  first_name: null,
  gender: null,
  home_phone: null,
  job_title: null,
  last_name: null,
  middle_name: null,
  mobile_phone: null,
  name_on_check: null,
  named_on_lease: false,
  other_phone: null,
  salutation: null,
  search_tag: null,
  suffix: null,
  work_phone: null
)
```

