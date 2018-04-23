# Telstra_Messaging::AuthenticationApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_token**](AuthenticationApi.md#auth_token) | **POST** /oauth/token | Generate OAuth2 token


# **auth_token**
> OAuthResponse auth_token(client_id, client_secret, grant_type)

Generate OAuth2 token

To generate an OAuth2 Authentication token, pass through your `Client key` and `Client secret` that you received when you registered for the &quot;API Free Trial&quot; Product.  The grant_type should be left as `client_credentials` and the scope as `NSMS`.  The token will expire in one hour. <pre><code class=\"language-sh\">   #!/bin/bash   # Obtain these keys from the Telstra Developer Portal   CLIENT_KEY=\"your client key\"   CLIENT_SECRET=\"your client secret\"   curl -X POST -H 'Content-Type: application/x-www-form-urlencoded' \\   -d 'grant_type=client_credentials&amp;client_id=$CLIENT_KEY&amp;client_secret=CLIENT_SECRET&amp;scope=NSMS' \\   'https://tapi.telstra.com/v2/oauth/token' </code></pre> 

### Example
```ruby
# load the gem
require 'Telstra_Messaging'

api_instance = Telstra_Messaging::AuthenticationApi.new

client_id = "client_id_example" # String | 

client_secret = "client_secret_example" # String | 

grant_type = "client_credentials" # String | 


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
 **grant_type** | **String**|  | [default to client_credentials]

### Return type

[**OAuthResponse**](OAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



