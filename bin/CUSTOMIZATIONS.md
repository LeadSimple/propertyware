# Customizations

To satisfy our needs, we sometimes update some of OpenAPI Generator templates. This is a list of all of them, and the version where they were introduced.

These customizations reside in the `.openapi-generator/templates/ruby-client` folder.

## Changelog

### v1.3.2
- Added new `PAYMENT_TYPE_NA` payment type option that Propertyware has started sending us. This patch is applied in fix_json.rb
- Added default value for area_units in the models. This patch is applied in fix_json.rb. This along with the updates to the template, ensure that we fail gracefully with invalid values for these keys. See below.

### v1.3.1

- Added handling of invalid area_units values in the models. Update done, at the time of this commit, at `./.openapi-generator/templates/ruby-client/partial_model_generic.mustache:L281`.

### v1.0.0

- In case we receive an enum with an invalid value, we are adding the received value in the error message to make debugging (and further contacting Propertyware) easier. Update done, at the time of this commit, at `./.openapi-generator/templates/ruby-client/partial_model_generic.mustache:L281`.
