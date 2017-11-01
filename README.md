# Getting started


The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.

It also allows your application to track the delivery status of both sent and received SMS messages.


## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build telstra_messaging_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install telstra_messaging_api-2.2.3.gem ```

## Initialization

### Example

```ruby
require 'telstra_messaging_api'

include TelstraMessagingApi

# Configuration parameters and credentials
o_auth_client_id = 'o_auth_client_id' # OAuth 2 Client ID
o_auth_client_secret = 'o_auth_client_secret' # OAuth 2 Client Secret

#  create a new client
client = TelstraMessagingApiClient.new(
  o_auth_client_id: o_auth_client_id,
  o_auth_client_secret: o_auth_client_secret
)

# obtain a new access token
token = client.auth.authorize(scope: [OAuthScopeEnum::NSMS])

# the client is now authorized and you can use controllers to make endpoint calls
```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [ProvisioningController](#provisioning_controller)
* [MessagingController](#messaging_controller)

## <a name="provisioning_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ProvisioningController") ProvisioningController

### Get singleton instance

The singleton instance of the ``` ProvisioningController ``` class can be accessed from the API Client.

```ruby
provisioning = client.provisioning
```

### <a name="delete_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".ProvisioningController.delete_subscription") delete_subscription

> Delete Subscription

#### Example Usage

```ruby

provisioning.delete_subscription()

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does not have permission |
| 404 | The requested URI does not exist |
| 0 | An internal error occurred when processing the request |



### <a name="create_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".ProvisioningController.create_subscription") create_subscription

> Create Subscription

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | A JSON payload containing the required attributes |


#### Example Usage

```ruby
body = ProvisionNumberRequest.new

result = provisioning.create_subscription(body)

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does not have permission |
| 404 | The requested URI does not exist |
| 0 | An internal error occurred when processing the request |



### <a name="get_subscription"></a>![Method: ](https://apidocs.io/img/method.png ".ProvisioningController.get_subscription") get_subscription

> Get Subscription

#### Example Usage

```ruby

result = provisioning.get_subscription()

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does not have permission |
| 404 | The requested URI does not exist |
| 0 | An internal error occurred when processing the request |



[Back to List of Controllers](#list_of_controllers)

## <a name="messaging_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MessagingController") MessagingController

### Get singleton instance

The singleton instance of the ``` MessagingController ``` class can be accessed from the API Client.

```ruby
messaging = client.messaging
```

### <a name="retrieve_sms_responses"></a>![Method: ](https://apidocs.io/img/method.png ".MessagingController.retrieve_sms_responses") retrieve_sms_responses

> Retrieve SMS Responses

#### Example Usage

```ruby

result = messaging.retrieve_sms_responses()

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does<br>not have permission |
| 404 | The requested URI does not exist |
| 405 | The requested resource does not support the supplied verb |
| 415 | API does not support the requested content type |
| 422 | The request is formed correctly, but due to some condition<br>the request cannot be processed e.g. email is required and it is not provided<br>in the request |
| 501 | The HTTP method being used has not yet been implemented for<br>the requested resource |
| 503 | The service requested is currently unavailable |
| 0 | An internal error occurred when processing the request |



### <a name="create_send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".MessagingController.create_send_sms") create_send_sms

> Send SMS

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| payload |  ``` Required ```  | A JSON or XML payload containing the recipient's phone number and text message.

The recipient number should be in the format '04xxxxxxxx' where x is a digit |


#### Example Usage

```ruby
payload = SendSMSRequest.new

result = messaging.create_send_sms(payload)

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does<br>not have permission |
| 404 | The requested URI does not exist |
| 405 | The requested resource does not support the supplied verb |
| 415 | API does not support the requested content type |
| 422 | The request is formed correctly, but due to some condition<br>the request cannot be processed e.g. email is required and it is not provided<br>in the request |
| 501 | The HTTP method being used has not yet been implemented for<br>the requested resource |
| 503 | The service requested is currently unavailable |
| 0 | An internal error occurred when processing the request |



### <a name="get_sms_status"></a>![Method: ](https://apidocs.io/img/method.png ".MessagingController.get_sms_status") get_sms_status

> Get SMS Status

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms |


#### Example Usage

```ruby
message_id = 'messageId'

result = messaging.get_sms_status(message_id)

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does<br>not have permission |
| 404 | The requested URI does not exist |
| 405 | The requested resource does not support the supplied verb |
| 415 | API does not support the requested content type |
| 422 | The request is formed correctly, but due to some condition<br>the request cannot be processed e.g. email is required and it is not provided<br>in the request |
| 501 | The HTTP method being used has not yet been implemented for<br>the requested resource |
| 503 | The service requested is currently unavailable |
| 0 | An internal error occurred when processing the request |



### <a name="create_send_mms"></a>![Method: ](https://apidocs.io/img/method.png ".MessagingController.create_send_mms") create_send_mms

> Send MMS

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | A JSON or XML payload containing the recipient's phone number
and MMS message.The recipient number should be in the format '04xxxxxxxx'
where x is a digit |


#### Example Usage

```ruby
body = SendMMSRequest.new

result = messaging.create_send_mms(body)

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does<br>not have permission |
| 404 | The requested URI does not exist |
| 405 | The requested resource does not support the supplied verb |
| 415 | API does not support the requested content type |
| 422 | The request is formed correctly, but due to some condition<br>the request cannot be processed e.g. email is required and it is not provided<br>in the request |
| 501 | The HTTP method being used has not yet been implemented for<br>the requested resource |
| 503 | The service requested is currently unavailable |
| 0 | An internal error occurred when processing the request |



### <a name="get_mms_status"></a>![Method: ](https://apidocs.io/img/method.png ".MessagingController.get_mms_status") get_mms_status

> Get MMS Status

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageid |  ``` Required ```  | Unique identifier of a message - it is the value returned from
a previous POST call to https://api.telstra.com/v2/messages/mms |


#### Example Usage

```ruby
messageid = 'messageid'

result = messaging.get_mms_status(messageid)

```

See the documentation at [Dev.Telstra.com](https://dev.telstra.com/content/messaging-api) for more information

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid or missing request parameters |
| 401 | Invalid or no credentials passed in the request |
| 403 | Authorization credentials passed and accepted but account does<br>not have permission |
| 404 | The requested URI does not exist |
| 405 | The requested resource does not support the supplied verb |
| 415 | API does not support the requested content type |
| 422 | The request is formed correctly, but due to some condition<br>the request cannot be processed e.g. email is required and it is not provided<br>in the request |
| 501 | The HTTP method being used has not yet been implemented for<br>the requested resource |
| 503 | The service requested is currently unavailable |
| 0 | An internal error occurred when processing the request |



[Back to List of Controllers](#list_of_controllers)



