# Telstra_Messaging::ProvisioningApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription**](ProvisioningApi.md#create_subscription) | **POST** /messages/provisioning/subscriptions | Create Subscription
[**delete_subscription**](ProvisioningApi.md#delete_subscription) | **DELETE** /messages/provisioning/subscriptions | Delete Subscription
[**get_subscription**](ProvisioningApi.md#get_subscription) | **GET** /messages/provisioning/subscriptions | Get Subscription


# **create_subscription**
> ProvisionNumberResponse create_subscription(body)

Create Subscription

Invoke the provisioning API to get a dedicated mobile number for an account or application.  <pre><code class=\"language-sh\">   #!/bin/bash   curl -X POST \\   https://tapi.telstra.com/v2/messages/provisioning/subscriptions \\   -H 'authorization: Bearer $ACCESS_TOKEN' \\   -H 'cache-control: no-cache' \\   -H 'content-type: application/json' \\   -d '{   \"activeDays\":30,   \"notifyURL\":\"http://example.com/callback\",   \"callbackData\":     {       \"anything\":\"some data\"     }   }' </code></pre>

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::ProvisioningApi.new

body = Telstra_Messaging::ProvisionNumberRequest.new # ProvisionNumberRequest | A JSON payload containing the required attributes


begin
  #Create Subscription
  result = api_instance.create_subscription(body)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling ProvisioningApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProvisionNumberRequest**](ProvisionNumberRequest.md)| A JSON payload containing the required attributes | 

### Return type

[**ProvisionNumberResponse**](ProvisionNumberResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_subscription**
> delete_subscription(body)

Delete Subscription

Delete a mobile number subscription from an account

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::ProvisioningApi.new

body = Telstra_Messaging::DeleteNumberRequest.new # DeleteNumberRequest | EmptyArr


begin
  #Delete Subscription
  api_instance.delete_subscription(body)
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling ProvisioningApi->delete_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeleteNumberRequest**](DeleteNumberRequest.md)| EmptyArr | 

### Return type

nil (empty response body)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription**
> GetSubscriptionResponse get_subscription

Get Subscription

Get mobile number subscription for an account

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::ProvisioningApi.new

begin
  #Get Subscription
  result = api_instance.get_subscription
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling ProvisioningApi->get_subscription: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetSubscriptionResponse**](GetSubscriptionResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



