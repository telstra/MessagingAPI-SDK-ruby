# Telstra_Messaging::ProvisioningApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription**](ProvisioningApi.md#create_subscription) | **POST** /messages/provisioning/subscriptions | Create Subscription
[**delete_subscription**](ProvisioningApi.md#delete_subscription) | **DELETE** /messages/provisioning/subscriptions | Delete Subscription
[**get_subscription**](ProvisioningApi.md#get_subscription) | **GET** /messages/provisioning/subscriptions | Get Subscription



## create_subscription

> ProvisionNumberResponse create_subscription(body)

Create Subscription

Invoke the provisioning API to get a dedicated mobile number for an account or application.  Note that Free Trial apps will have a 30-Day Limit for their provisioned number. If the Provisioning call is made several times within that 30-Day period, it will return the `expiryDate` in the Unix format and will not add any activeDays until after that `expiryDate`. After the `expiryDate`, you may make another Provisioning call to extend the activeDays by another 30-Days.  For paid apps, a provisioned number can be allotted for a maximum of 5 years. If a Provisioning call is made which will result to activeDays > 1825, a 409 `Active Days Max` response will be returned to indicate that the provisioned number is already valid for more than 5 years and that no update to activeDays has been made. 

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


## delete_subscription

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
- **Accept**: Not defined


## get_subscription

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

- **Content-Type**: Not defined
- **Accept**: application/json

