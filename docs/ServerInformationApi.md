# Rasa::HTTP::ServerInformationApi

All URIs are relative to *http://localhost:5005*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_health**](ServerInformationApi.md#get_health) | **GET** / | Health endpoint of Rasa Server |
| [**get_status**](ServerInformationApi.md#get_status) | **GET** /status | Status of the Rasa server |
| [**get_version**](ServerInformationApi.md#get_version) | **GET** /version | Version of Rasa |


## get_health

> String get_health

Health endpoint of Rasa Server

This URL can be used as an endpoint to run health checks against. When the server is running this will return 200.

### Examples

```ruby
require 'time'
require 'rasa-http-api'

api_instance = Rasa::HTTP::ServerInformationApi.new

begin
  # Health endpoint of Rasa Server
  result = api_instance.get_health
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ServerInformationApi->get_health: #{e}"
end
```

#### Using the get_health_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_health_with_http_info

```ruby
begin
  # Health endpoint of Rasa Server
  data, status_code, headers = api_instance.get_health_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ServerInformationApi->get_health_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_status

> <GetStatus200Response> get_status

Status of the Rasa server

Information about the server and the currently loaded Rasa model.

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

api_instance = Rasa::HTTP::ServerInformationApi.new

begin
  # Status of the Rasa server
  result = api_instance.get_status
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ServerInformationApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatus200Response>, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # Status of the Rasa server
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatus200Response>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ServerInformationApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetStatus200Response**](GetStatus200Response.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_version

> <GetVersion200Response> get_version

Version of Rasa

Returns the version of Rasa.

### Examples

```ruby
require 'time'
require 'rasa-http-api'

api_instance = Rasa::HTTP::ServerInformationApi.new

begin
  # Version of Rasa
  result = api_instance.get_version
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ServerInformationApi->get_version: #{e}"
end
```

#### Using the get_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVersion200Response>, Integer, Hash)> get_version_with_http_info

```ruby
begin
  # Version of Rasa
  data, status_code, headers = api_instance.get_version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVersion200Response>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ServerInformationApi->get_version_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetVersion200Response**](GetVersion200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

