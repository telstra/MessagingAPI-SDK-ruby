# Telstra_Messaging::ProvisioningApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription**](ProvisioningApi.md#create_subscription) | **POST** /messages/provisioning/subscriptions | Create Subscription
[**delete_subscription**](ProvisioningApi.md#delete_subscription) | **DELETE** /messages/provisioning/subscriptions | Delete Subscription
[**get_subscription**](ProvisioningApi.md#get_subscription) | **GET** /messages/provisioning/subscriptions | Get Subscription


# **create_subscription**
> ProvisionNumberResponse create_subscription(authorization, body)

Create Subscription

Provision a mobile number

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

authorization = "authorization_example" # String | An OAUTH bearer token that is entitled to use the 'SUBSCRIPTION' scope.

body = Telstra_Messaging::ProvisionNumberRequest.new # ProvisionNumberRequest | A JSON payload containing the required attributes


begin
  #Create Subscription
  result = api_instance.create_subscription(authorization, body)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling ProvisioningApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| An OAUTH bearer token that is entitled to use the &#39;SUBSCRIPTION&#39; scope. | 
 **body** | [**ProvisionNumberRequest**](ProvisionNumberRequest.md)| A JSON payload containing the required attributes | 

### Return type

[**ProvisionNumberResponse**](ProvisionNumberResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_subscription**
> delete_subscription(authorization)

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

authorization = "authorization_example" # String | An OAUTH bearer token that is entitled to use the 'SUBSCRIPTION' scope.


begin
  #Delete Subscription
  api_instance.delete_subscription(authorization)
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling ProvisioningApi->delete_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| An OAUTH bearer token that is entitled to use the &#39;SUBSCRIPTION&#39; scope. | 

### Return type

nil (empty response body)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscription**
> Array&lt;ProvisionNumberResponse&gt; get_subscription(authorization)

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

authorization = "authorization_example" # String | An OAUTH bearer token that is entitled to use the 'SUBSCRIPTION' scope.


begin
  #Get Subscription
  result = api_instance.get_subscription(authorization)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling ProvisioningApi->get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| An OAUTH bearer token that is entitled to use the &#39;SUBSCRIPTION&#39; scope. | 

### Return type

[**Array&lt;ProvisionNumberResponse&gt;**](ProvisionNumberResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



