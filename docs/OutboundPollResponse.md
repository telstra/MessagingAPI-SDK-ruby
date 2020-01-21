# Telstra_Messaging::OutboundPollResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | The phone number (recipient) the message was sent to (in E.164 format).  | [optional] 
**sent_timestamp** | **String** | The date and time when the message was sent. | [optional] 
**received_timestamp** | **String** | The date and time when the message was recieved by recipient. | [optional] 
**delivery_status** | [**Status**](Status.md) |  | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::OutboundPollResponse.new(to: +61418123456,
                                 sent_timestamp: 2017-03-17T09:16:49+10:00,
                                 received_timestamp: 2017-03-17T09:16:50+10:00,
                                 delivery_status: null)
```


