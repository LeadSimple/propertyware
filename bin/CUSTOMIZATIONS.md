# Customizations

To satisfy our needs, we sometimes update some of OpenAPI Generator templates. This is a list of all of them, and the version where they were introduced.

These customizations reside in the `.openapi-generator/templates/ruby-client` folder.

## Changelog

### v1.3.1

- Added handling of invalid area_units values in the models. Update done in [this commit](https://github.com/LeadSimple/propertyware/commit/9134454a3ec15862613f189a62fb867c5e16bee8). This will need to be applied manually if we regenerate the models. More ambitiously in the future, we could do a larger update to `./.openapi-generator/templates/ruby-client/partial_model_generic.mustache`, to warn instead of failing if we receive invalid values.

### v1.0.0

- In case we receive an enum with an invalid value, we are adding the received value in the error message to make debugging (and further contacting Propertyware) easier. Update done, at the time of this commit, at `./.openapi-generator/templates/ruby-client/partial_model_generic.mustache:L281`.
