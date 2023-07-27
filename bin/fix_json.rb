require 'pry'
require 'json'

file = File.read('bin/propertyware.json')
data = JSON.parse(file)

# For some reason, the validator fails to properly parse the contact URL,
# so we are simply removing it becase it has no effect in the final SDK anyway
data['info']['contact'].delete('url')

# The operation IDs - which are used to generate the SDK method names - are
# in a weird format where they have a `Using<METHOD>` suffix. We are removing
# that suffix here to simplify the SDK method names.
data['paths'].each do |_path_name, methods|
  methods.each do |_method_name, method|
    method['operationId'] = method['operationId'].gsub(/Using[A-Z]+$/, '') 
  end
end

# The API does not include the Authorization part on their JSON, so we add it ourselves
data['security'] = [{ "clientId": [] }, { "clientSecret": [] }, { "organizationId": [] }]
data['components']['securitySchemes'] = {
  "clientId": {
    "type": "apiKey",
    "in": "header",
    "name": "x-propertyware-client-id"
  },
  "clientSecret": {
    "type": "apiKey",
    "in": "header",
    "name": "x-propertyware-client-secret"
  },
  "organizationId": {
    "type": "apiKey",
    "in": "header",
    "name": "x-propertyware-system-id"
  }
}

# Guarantee we automatically set HTTPS as the schema
data['servers'][0] = { "url": "https://api.propertyware.com/pw/api/rest/v1" } unless data['servers'].first['url'].start_with?("https://")

# All models have an extra `DTO` suffix, which we are removing here for simplicity sake.
# To simplify, we are acting directly in the output string, which is not ideal, but it's simpler
# than handling all cases using `#each` calls
data_json = data.to_json
data_json = data_json.gsub(/DTOs? */i, '')

# Save it back to the file
File.write('bin/propertyware.json', data_json)