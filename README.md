# Telstra_Messaging

Telstra_Messaging - the Ruby gem for the Telstra Messaging API



- API version: 2.2.6
- Package version: 1.0.4.1

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build Telstra_Messaging.gemspec
```

Then either install the gem locally:

```shell
gem install ./Telstra_Messaging-1.0.4.1.gem
```
(for development, run `gem install --dev ./Telstra_Messaging-1.0.4.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'Telstra_Messaging', '~> 1.0.4.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/Telstra/MessagingAPI-SDK-Ruby, then add the following in the Gemfile:

    gem 'Telstra_Messaging', :git => 'https://github.com/Telstra/MessagingAPI-SDK-Ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to *https://tapi.telstra.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Telstra_Messaging::AuthenticationApi* | [**auth_token**](docs/AuthenticationApi.md#auth_token) | **POST** /oauth/token | Generate OAuth2 token
*Telstra_Messaging::MessagingApi* | [**get_mms_status**](docs/MessagingApi.md#get_mms_status) | **GET** /messages/mms/{messageid}/status | Get MMS Status
*Telstra_Messaging::MessagingApi* | [**get_sms_status**](docs/MessagingApi.md#get_sms_status) | **GET** /messages/sms/{messageId}/status | Get SMS Status
*Telstra_Messaging::MessagingApi* | [**retrieve_mms_responses**](docs/MessagingApi.md#retrieve_mms_responses) | **GET** /messages/mms | Retrieve MMS Responses
*Telstra_Messaging::MessagingApi* | [**retrieve_sms_responses**](docs/MessagingApi.md#retrieve_sms_responses) | **GET** /messages/sms | Retrieve SMS Responses
*Telstra_Messaging::MessagingApi* | [**send_mms**](docs/MessagingApi.md#send_mms) | **POST** /messages/mms | Send MMS
*Telstra_Messaging::MessagingApi* | [**send_sms**](docs/MessagingApi.md#send_sms) | **POST** /messages/sms | Send SMS
*Telstra_Messaging::ProvisioningApi* | [**create_subscription**](docs/ProvisioningApi.md#create_subscription) | **POST** /messages/provisioning/subscriptions | Create Subscription
*Telstra_Messaging::ProvisioningApi* | [**delete_subscription**](docs/ProvisioningApi.md#delete_subscription) | **DELETE** /messages/provisioning/subscriptions | Delete Subscription
*Telstra_Messaging::ProvisioningApi* | [**get_subscription**](docs/ProvisioningApi.md#get_subscription) | **GET** /messages/provisioning/subscriptions | Get Subscription


## Documentation for Models

 - [Telstra_Messaging::DeleteNumberRequest](docs/DeleteNumberRequest.md)
 - [Telstra_Messaging::GetSubscriptionResponse](docs/GetSubscriptionResponse.md)
 - [Telstra_Messaging::InboundPollResponse](docs/InboundPollResponse.md)
 - [Telstra_Messaging::MMSContent](docs/MMSContent.md)
 - [Telstra_Messaging::Message](docs/Message.md)
 - [Telstra_Messaging::MessageSentResponse](docs/MessageSentResponse.md)
 - [Telstra_Messaging::OAuthResponse](docs/OAuthResponse.md)
 - [Telstra_Messaging::OutboundPollResponse](docs/OutboundPollResponse.md)
 - [Telstra_Messaging::ProvisionNumberRequest](docs/ProvisionNumberRequest.md)
 - [Telstra_Messaging::ProvisionNumberResponse](docs/ProvisionNumberResponse.md)
 - [Telstra_Messaging::SendMmsRequest](docs/SendMmsRequest.md)
 - [Telstra_Messaging::SendSMSRequest](docs/SendSMSRequest.md)
 - [Telstra_Messaging::Status](docs/Status.md)


## Documentation for Authorisation


### auth

- **Type**: OAuth
- **Flow**: application
- **Authorisation URL**: 
- **Scopes**: 
  - NSMS: NSMS

