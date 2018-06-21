# Telstra_Messaging::AuthenticationApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_token**](AuthenticationApi.md#auth_token) | **POST** /oauth/token | Generate OAuth2 token


# **auth_token**
> OAuthResponse auth_token(client_id, client_secret, grant_type)

Generate OAuth2 token

To generate an OAuth2 Authentication token, pass through your `Client key` and `Client secret` that you received when you registered for the **API Free Trial** Product. The grant_type should be left as `client_credentials` and the scope as `NSMS`. The token will expire in one hour. 

### Example
```ruby
# load the gem
require 'Telstra_Messaging'

api_instance = Telstra_Messaging::AuthenticationApi.new
client_id = 'client_id_example' # String | 
client_secret = 'client_secret_example' # String | 
grant_type = 'client_credentials' # String | 

begin
  #Generate OAuth2 token
  result = api_instance.auth_token(client_id, client_secret, grant_type)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**|  | 
 **client_secret** | **String**|  | 
 **grant_type** | **String**|  | [default to &#39;client_credentials&#39;]

### Return type

[**OAuthResponse**](OAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



