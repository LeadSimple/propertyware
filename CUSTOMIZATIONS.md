# Customizations

To satisfy our needs, we sometimes update some of OpenAPI Generator templates. This is a list of all of them, and the version where they were introduced.

These customizations reside in the `.openapi-generator/templates/ruby-client` folder.

## Changelog

### v1.0.0

- In case we receive an enum with an invalid value, we are adding the received value in the error message to make debugging (and further contacting Propertyware) easier. Update done, at the time of this commit, at `./.openapi-generator/templates/ruby-client/partial_model_generic.mustache:L281`.
