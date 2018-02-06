# Telstra_Messaging::MessagingApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_mms_status**](MessagingApi.md#get_mms_status) | **GET** /messages/mms/{messageid}/status | Get MMS Status
[**get_sms_status**](MessagingApi.md#get_sms_status) | **GET** /messages/sms/{messageId}/status | Get SMS Status
[**retrieve_sms_responses**](MessagingApi.md#retrieve_sms_responses) | **GET** /messages/sms | Retrieve SMS Responses
[**send_mms**](MessagingApi.md#send_mms) | **POST** /messages/mms | Send MMS
[**send_sms**](MessagingApi.md#send_sms) | **POST** /messages/sms | Send SMS


# **get_mms_status**
> OutboundPollResponse get_mms_status(messageid)

Get MMS Status

Get MMS Status

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::MessagingApi.new

messageid = "messageid_example" # String | Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms


begin
  #Get MMS Status
  result = api_instance.get_mms_status(messageid)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->get_mms_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageid** | **String**| Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms | 

### Return type

[**OutboundPollResponse**](OutboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sms_status**
> OutboundPollResponse get_sms_status(message_id)

Get SMS Status

Get Message Status

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::MessagingApi.new

message_id = "message_id_example" # String | Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms


begin
  #Get SMS Status
  result = api_instance.get_sms_status(message_id)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->get_sms_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms | 

### Return type

[**OutboundPollResponse**](OutboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_sms_responses**
> Array&lt;InboundPollResponse&gt; retrieve_sms_responses

Retrieve SMS Responses

Retrieve Messages

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::MessagingApi.new

begin
  #Retrieve SMS Responses
  result = api_instance.retrieve_sms_responses
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->retrieve_sms_responses: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;InboundPollResponse&gt;**](InboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_mms**
> Object send_mms(body)

Send MMS

Send MMS

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::MessagingApi.new

body = Telstra_Messaging::SendMmsRequest.new # SendMmsRequest | A JSON or XML payload containing the recipient's phone number and MMS message.The recipient number should be in the format '04xxxxxxxx' where x is a digit


begin
  #Send MMS
  result = api_instance.send_mms(body)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->send_mms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendMmsRequest**](SendMmsRequest.md)| A JSON or XML payload containing the recipient&#39;s phone number and MMS message.The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit | 

### Return type

**Object**

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_sms**
> MessageSentResponse send_sms(payload)

Send SMS

Send Message

### Example
```ruby
# load the gem
require 'Telstra_Messaging'
# setup authorization
Telstra_Messaging.configure do |config|
  # Configure OAuth2 access token for authorization: auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Telstra_Messaging::MessagingApi.new

payload = Telstra_Messaging::SendSMSRequest.new # SendSMSRequest | A JSON or XML payload containing the recipient's phone number and text message. The recipient number should be in the format '04xxxxxxxx' where x is a digit


begin
  #Send SMS
  result = api_instance.send_sms(payload)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->send_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SendSMSRequest**](SendSMSRequest.md)| A JSON or XML payload containing the recipient&#39;s phone number and text message. The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



