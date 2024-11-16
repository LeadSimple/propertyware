require 'json'

file = File.read('bin/propertyware.json')
data = JSON.parse(file)

# All models have an extra `DTO` suffix, which we are removing here for simplicity sake.
# To simplify, we are acting directly in the output string, which is not ideal, but it's simpler
# than handling all cases using `#each` calls
data_json = data.to_json
data_json = data_json.gsub(/DTOs? */i, '')
data = JSON.parse(data_json)

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

# This enum is failing to be parsed, because the values are actually capitalized
# They are properly capitalized in SaveBuilding#propertyType, but not in Building#propertyType
#
# The reason why we simply copy the data instead of capitalizing it, is because there are some
# inconsistencies and simply capitalizing doesn't work. For example, the `propertyType` enum
# in `SaveBuilding` has a `DU_FOUR_PLEX` value, but the `Building` enum has a `Du/Fourplex` value.
data['components']['schemas']['Building']['properties']['propertyType']['enum'] = 
  data['components']['schemas']['SaveBuilding']['properties']['propertyType']['enum']

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

data['components']['schemas'].each do |schema_name, schema|
  next unless schema['properties']
  
  # Ensure all paymentType enums include PAYMENT_TYPE_NA
  if schema['properties']['paymentType']&.dig('enum')
    payment_types = schema['properties']['paymentType']['enum']
    payment_types << 'PAYMENT_TYPE_NA' unless payment_types.include?('PAYMENT_TYPE_NA')
  end

  # make sure that every area_units key has a default value
  if schema['properties']['areaUnits']
    schema['properties']['areaUnits']['default'] = 'Sq Ft'
  end
end

# Save it back to the file
File.write('bin/propertyware.json', JSON.pretty_generate(data))
