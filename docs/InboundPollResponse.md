# Telstra_Messaging::InboundPollResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | message status | [optional] 
**destination_address** | **String** | The phone number (recipient) that the message was sent to (in E.164 format).  | [optional] 
**sender_address** | **String** | The phone number (sender) that the message was sent from (in E.164 format).  | [optional] 
**message** | **String** | Text of the message that was sent | [optional] 
**message_id** | **String** | Message Id | [optional] 
**sent_timestamp** | **String** | The date and time when the message was sent by recipient. | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::InboundPollResponse.new(status: null,
                                 destination_address: null,
                                 sender_address: null,
                                 message: null,
                                 message_id: null,
                                 sent_timestamp: null)
```


