# Telstra_Messaging::MessagingApi

All URIs are relative to *https://tapi.telstra.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_mms_status**](MessagingApi.md#get_mms_status) | **GET** /messages/mms/{messageid}/status | Get MMS Status
[**get_sms_status**](MessagingApi.md#get_sms_status) | **GET** /messages/sms/{messageId}/status | Get SMS Status
[**retrieve_mms_responses**](MessagingApi.md#retrieve_mms_responses) | **GET** /messages/mms | Retrieve MMS Responses
[**retrieve_sms_responses**](MessagingApi.md#retrieve_sms_responses) | **GET** /messages/sms | Retrieve SMS Responses
[**send_mms**](MessagingApi.md#send_mms) | **POST** /messages/mms | Send MMS
[**send_sms**](MessagingApi.md#send_sms) | **POST** /messages/sms | Send SMS


# **get_mms_status**
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
messageid = 'messageid_example' # String | Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms 

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
 **messageid** | **String**| Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms  | 

### Return type

[**Array&lt;OutboundPollResponse&gt;**](OutboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sms_status**
> Array&lt;OutboundPollResponse&gt; get_sms_status(message_id)

Get SMS Status

If no notification URL has been specified, it is possible to poll for the message status. Note that the `MessageId` that appears in the URL must be URL encoded. Just copying the `MessageId` as it was supplied when submitting the message may not work.  SMS Status with Notification URL --- When a message has reached its final state, the API will send a POST to the URL that has been previously specified. <pre><code class=\"language-sh\">{     to: '+61418123456'     sentTimestamp: '2017-03-17T10:05:22+10:00'     receivedTimestamp: '2017-03-17T10:05:23+10:00'     messageId: /cccb284200035236000000000ee9d074019e0301/1261418123456     deliveryStatus: DELIVRD   } </code></pre>  The fields are: <table>   <thead>     <tr>       <th>Field</th>       <th>Description</th>     </tr>   </thead>   <tbody>     <tr>       <td><code>to</code></td>       <td>The number the message was sent to.</td>     </tr>     <tr>       <td><code>receivedTimestamp</code></td>       <td>Time the message was sent to the API.</td>     </tr>     <tr>       <td><code>sentTimestamp</code></td>       <td>Time handling of the message ended.</td>     </tr>     <tr>       <td><code>deliveryStatus</code></td>       <td>The final state of the message.</td>     </tr>     <tr>       <td><code>messageId</code></td>       <td>The same reference that was returned when the original message was sent.</td>     </tr>     <tr>       <td><code>receivedTimestamp</code></td>       <td>Time the message was sent to the API.</td>     </tr>   </tbody> </table>  Upon receiving this call it is expected that your servers will give a 204 (No Content) response. Anything else will cause the API to reattempt the call 5 minutes later. 

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
message_id = 'message_id_example' # String | Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms. 

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
 **message_id** | **String**| Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms.  | 

### Return type

[**Array&lt;OutboundPollResponse&gt;**](OutboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_mms_responses**
> Array&lt;MMSContent&gt; retrieve_mms_responses

Retrieve MMS Responses

Messages are retrieved one at a time, starting with the earliest response. If the subscription has a `notifyURL`, response messages will be logged there instead.  # Notification URL Format for MMS Replies  <pre><code class=\"language-sh\">{   \"status\": \"RECEIVED\",   \"destinationAddress\": \"+61418123456\",   \"senderAddress\": \"+61421987654\",   \"subject\": \"Foo\",   \"sentTimestamp\": \"2018-03-23T12:15:45+10:00\",   \"envelope\": \"string\",   \"MMSContent\":     [       {         \"type\": \"text/plain\",         \"filename\": \"text_1.txt\",         \"payload\": \"string\"       },       {         \"type\": \"image/jpeg\",         \"filename\": \"sample.jpeg\",         \"payload\": \"string\"       }     ] }</code></pre>  The fields are: | Field | Description | | --- | --- | | `status` | The final state of the message. | | `destinationAddress` |The number the message was sent to. | | `senderAddress` | The number the message was sent from. | | `subject` | The subject assigned to the message. | | `sentTimestamp` | Time handling of the message ended. | | `envelope` | Information about about terminal type and originating operator. | | `MMSContent` | An array of the actual content of the reply message. | | `type` | The content type of the message. | | `filename` | The filename for the message content. | | `payload` | The content of the message. | 

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
  #Retrieve MMS Responses
  result = api_instance.retrieve_mms_responses
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->retrieve_mms_responses: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;MMSContent&gt;**](MMSContent.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_sms_responses**
> InboundPollResponse retrieve_sms_responses

Retrieve SMS Responses

Messages are retrieved one at a time, starting with the earliest response. The API supports the encoding of the full range of emojis in the reply message. The emojis will be in their UTF-8 format. If the subscription has a `notifyURL`, response messages will be logged there instead.  # Notification URL Format for SMS Response  <pre><code class=\"language-sh\">{   \"to\":\"+61472880123\",   \"from\":\"+61412345678\",   \"body\":\"Foo4\",   \"sentTimestamp\":\"2018-04-20T14:24:35\",   \"messageId\":\"DMASApiA0000000146\" }</code></pre>  The fields are: | Field | Description | | --- |--- | | `to` | The number the message was sent to. | | `from` | The number the message was sent from. | | `body` | The content of the SMS response. | | `sentTimestamp` | Time handling of the message ended. | | `messageId` | The ID assigned to the message. | 

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

[**InboundPollResponse**](InboundPollResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_mms**
> MessageSentResponse send_mms(send_mms_request)

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
send_mms_request = Telstra_Messaging::SendMmsRequest.new # SendMmsRequest | A JSON or XML payload containing the recipient's phone number and MMS message. The recipient number should be in the format '04xxxxxxxx' where x is a digit.


begin
  #Send MMS
  result = api_instance.send_mms(send_mms_request)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->send_mms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_mms_request** | [**SendMmsRequest**](SendMmsRequest.md)| A JSON or XML payload containing the recipient&#39;s phone number and MMS message. The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit.
 | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_sms**
> MessageSentResponse send_sms(send_sms_request)

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
send_sms_request = Telstra_Messaging::SendSMSRequest.new # SendSMSRequest | A JSON or XML payload containing the recipient's phone number and text message. This number can be in international format if preceeded by a '+' or in national format ('04xxxxxxxx') where x is a digit.


begin
  #Send SMS
  result = api_instance.send_sms(send_sms_request)
  p result
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling MessagingApi->send_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_sms_request** | [**SendSMSRequest**](SendSMSRequest.md)| A JSON or XML payload containing the recipient&#39;s phone number and text message. This number can be in international format if preceeded by a &#39;+&#39; or in national format (&#39;04xxxxxxxx&#39;) where x is a digit.
 | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



