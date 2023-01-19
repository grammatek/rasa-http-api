# Rasa::HTTP::DomainApi

All URIs are relative to *http://localhost:5005*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_domain**](DomainApi.md#get_domain) | **GET** /domain | Retrieve the loaded domain |


## get_domain

> <Domain> get_domain

Retrieve the loaded domain

Returns the domain specification the currently loaded model is using.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::DomainApi.new

begin
  # Retrieve the loaded domain
  result = api_instance.get_domain
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling DomainApi->get_domain: #{e}"
end
```

#### Using the get_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain>, Integer, Hash)> get_domain_with_http_info

```ruby
begin
  # Retrieve the loaded domain
  data, status_code, headers = api_instance.get_domain_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling DomainApi->get_domain_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Domain**](Domain.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/yaml

