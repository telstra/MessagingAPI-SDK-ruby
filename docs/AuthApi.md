# Telstra_Messaging::AuthApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**oauth_token_post**](AuthApi.md#oauth_token_post) | **POST** /oauth/token | AuthGeneratetokenPost


# **oauth_token_post**
> AuthgeneratetokenpostResponse oauth_token_post(o_auth_client_id, o_auth_client_secret)

AuthGeneratetokenPost

generate auth token

### Example
```ruby
# load the gem
require 'Telstra_Messaging'

api_instance = Telstra_Messaging::AuthApi.new

o_auth_client_id = "o_auth_client_id_example" # String | 

o_auth_client_secret = "o_auth_client_secret_example" # String | 


begin
  #AuthGeneratetokenPost
  result = api_instance.oauth_token_post(o_auth_client_id, o_auth_client_secret)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling AuthApi->oauth_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **o_auth_client_id** | **String**|  | 
 **o_auth_client_secret** | **String**|  | 

### Return type

[**AuthgeneratetokenpostResponse**](AuthgeneratetokenpostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



