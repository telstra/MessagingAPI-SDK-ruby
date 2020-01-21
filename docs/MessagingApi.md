# Telstra_Messaging::MessagingApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_mms_status**](MessagingApi.md#get_mms_status) | **GET** /messages/mms/{messageid}/status | Get MMS Status
[**get_sms_status**](MessagingApi.md#get_sms_status) | **GET** /messages/sms/{messageId}/status | Get SMS Status
[**m_ms_health_check**](MessagingApi.md#m_ms_health_check) | **GET** /messages/mms/heathcheck | MMS Health Check
[**retrieve_mms_replies**](MessagingApi.md#retrieve_mms_replies) | **GET** /messages/mms | Retrieve MMS Replies
[**retrieve_sms_replies**](MessagingApi.md#retrieve_sms_replies) | **GET** /messages/sms | Retrieve SMS Replies
[**s_ms_health_check**](MessagingApi.md#s_ms_health_check) | **GET** /messages/sms/heathcheck | SMS Health Check
[**s_ms_multi**](MessagingApi.md#s_ms_multi) | **POST** /messages/sms/multi | Send Multiple SMS
[**send_mms**](MessagingApi.md#send_mms) | **POST** /messages/mms | Send MMS
[**send_sms**](MessagingApi.md#send_sms) | **POST** /messages/sms | Send SMS



## get_mms_status

> Array&lt;OutboundPollResponse&gt; get_mms_status(messageid)

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
messageid = 'messageid_example' # String | Unique identifier of a message - it is the value returned from a previous POST call to https://tapi.telstra.com/v2/messages/mms 

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
 **messageid** | **String**| Unique identifier of a message - it is the value returned from a previous POST call to https://tapi.telstra.com/v2/messages/mms  | 

### Return type

[**Array&lt;OutboundPollResponse&gt;**](OutboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sms_status

> Array&lt;OutboundPollResponse&gt; get_sms_status(message_id)

Get SMS Status

If no notification URL has been specified, it is possible to poll for the message status.  Note that the `MessageId` that appears in the URL must be URL encoded. Just copying the `MessageId` as it was supplied when submitting the message may not work.  # SMS Status with Notification URL  When a message has reached its final state, the API will send a POST to the URL that has been previously specified.  <pre><code class=\"language-sh\">{     \"to\": \"+61418123456\",     \"sentTimestamp\": \"2017-03-17T10:05:22+10:00\",     \"receivedTimestamp\": \"2017-03-17T10:05:23+10:00\",     \"messageId\": \"1234567890ABCDEFGHIJKLNOPQRSTUVW\",     \"deliveryStatus\": \"DELIVRD\"   } </code></pre>  The fields are:  | Field | Description | | --- | ---| | `to` |  The number the message was sent to. | | `receivedTimestamp` | Time the message was sent to the API. | | `sentTimestamp` | Time handling of the message ended. | | `deliveryStatus` | The final state of the message. | | `messageId` | The same reference that was returned when the original message was sent.| | `receivedTimestamp` | Time the message was sent to the API.|  Upon receiving this call it is expected that your servers will give a 204 (No Content) response. 

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
message_id = 'message_id_example' # String | Unique identifier of a message - it is the value returned from a previous POST call to https://tapi.telstra.com/v2/messages/sms. 

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
 **message_id** | **String**| Unique identifier of a message - it is the value returned from a previous POST call to https://tapi.telstra.com/v2/messages/sms.  | 

### Return type

[**Array&lt;OutboundPollResponse&gt;**](OutboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## m_ms_health_check

> HealthCheckResponse m_ms_health_check

MMS Health Check

Determine whether the MMS service is up or down. 

### Example

```ruby
# load the gem
require 'Telstra_Messaging'

api_instance = Telstra_Messaging::MessagingApi.new

begin
  #MMS Health Check
  result = api_instance.m_ms_health_check
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->m_ms_health_check: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_mms_replies

> GetMmsResponse retrieve_mms_replies

Retrieve MMS Replies

Messages are retrieved one at a time, starting with the earliest reply.  If the subscription has a `notifyURL`, reply messages will be logged there instead, i.e. `GET` and reply `notifyURL` are exclusive.  # MMS Reply with Notification URL  When a reply is received, the API will send a POST to the subscription URL that has been previously specified.  <pre><code class=\"language-sh\">{   \"to\": \"+61418123456\",   \"from\": \"+61421987654\",   \"sentTimestamp\": \"2018-03-23T12:15:45+10:00\",   \"messageId\": \"XFRO1ApiA0000000111\",   \"subject\": \"Foo\",   \"envelope\": \"string\",   \"MMSContent\":     [       {         \"type\": \"text/plain\",         \"filename\": \"text_1.txt\",         \"payload\": \"string\"       },       {         \"type\": \"image/jpeg\",         \"filename\": \"sample.jpeg\",         \"payload\": \"string\"       }     ] }</code></pre>  The fields are:  | Field | Description | | --- | --- | | `to` |The number the message was sent to. | | `from` | The number the message was sent from. | | `sentTimestamp` | Time handling of the message ended. | | `messageId` | Message Id assigned by the MMSC | | `subject` | The subject assigned to the message. | | `envelope` | Information about about terminal type and originating operator. | | `MMSContent` | An array of the actual content of the reply message. | | `type` | The content type of the message. | | `filename` | The filename for the message content. | | `payload` | The content of the message. | 

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
  #Retrieve MMS Replies
  result = api_instance.retrieve_mms_replies
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->retrieve_mms_replies: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetMmsResponse**](GetMmsResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_sms_replies

> InboundPollResponse retrieve_sms_replies

Retrieve SMS Replies

Messages are retrieved one at a time, starting with the earliest reply.  The API supports the encoding of emojis in the reply message. The emojis will be in their UTF-8 format.  If the subscription has a `notifyURL`, reply messages will be logged there instead.  # SMS Reply with Notification URL  When a reply is received, the API will send a POST to the subscription URL that has been previously specified.  <pre><code class=\"language-sh\">{   \"to\":\"+61472880123\",   \"from\":\"+61412345678\",   \"body\":\"Foo4\",   \"sentTimestamp\":\"2018-04-20T14:24:35\",   \"messageId\":\"DMASApiA0000000146\" }</code></pre>  The fields are:  | Field | Description | | --- |--- | | `to` | The number the message was sent to. | | `from` | The number the message was sent from. | | `body` | The content of the SMS response. | | `sentTimestamp` | Time handling of the message ended. | | `messageId` | The ID assigned to the message. | 

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
  #Retrieve SMS Replies
  result = api_instance.retrieve_sms_replies
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->retrieve_sms_replies: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InboundPollResponse**](InboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## s_ms_health_check

> HealthCheckResponse s_ms_health_check

SMS Health Check

Determine whether the SMS service is up or down. 

### Example

```ruby
# load the gem
require 'Telstra_Messaging'

api_instance = Telstra_Messaging::MessagingApi.new

begin
  #SMS Health Check
  result = api_instance.s_ms_health_check
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->s_ms_health_check: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## s_ms_multi

> MessageSentResponseSms s_ms_multi(payload)

Send Multiple SMS

Send multiple SMS in one API call. 

### Example

```ruby
# load the gem
require 'Telstra_Messaging'

api_instance = Telstra_Messaging::MessagingApi.new
payload = Telstra_Messaging::SendSmsMultiRequest.new # SendSmsMultiRequest | A JSON payload containing the recipient's phone number and text message. This number can be in international format if preceeded by a '+' or in national format ('04xxxxxxxx') where x is a digit. 

begin
  #Send Multiple SMS
  result = api_instance.s_ms_multi(payload)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->s_ms_multi: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SendSmsMultiRequest**](SendSmsMultiRequest.md)| A JSON payload containing the recipient&#39;s phone number and text message. This number can be in international format if preceeded by a &#39;+&#39; or in national format (&#39;04xxxxxxxx&#39;) where x is a digit.  | 

### Return type

[**MessageSentResponseSms**](MessageSentResponseSms.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_mms

> MessageSentResponseMms send_mms(body)

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
body = Telstra_Messaging::SendMmsRequest.new # SendMmsRequest | A JSON or XML payload containing the recipient's phone number and MMS message. The recipient number should be in the format '04xxxxxxxx' where x is a digit. 

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
 **body** | [**SendMmsRequest**](SendMmsRequest.md)| A JSON or XML payload containing the recipient&#39;s phone number and MMS message. The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit.  | 

### Return type

[**MessageSentResponseMms**](MessageSentResponseMms.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_sms

> MessageSentResponseSms send_sms(payload)

Send SMS

Send an SMS Message to a single or multiple mobile number/s. 

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
payload = Telstra_Messaging::SendSMSRequest.new # SendSMSRequest | A JSON or XML payload containing the recipient's phone number and text message. This number can be in international format if preceeded by a '+' or in national format ('04xxxxxxxx') where x is a digit. 

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
 **payload** | [**SendSMSRequest**](SendSMSRequest.md)| A JSON or XML payload containing the recipient&#39;s phone number and text message. This number can be in international format if preceeded by a &#39;+&#39; or in national format (&#39;04xxxxxxxx&#39;) where x is a digit.  | 

### Return type

[**MessageSentResponseSms**](MessageSentResponseSms.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

