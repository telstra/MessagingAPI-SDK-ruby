# Telstra_Messaging::Message

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | Just a copy of the number the message is sent to. | 
**delivery_status** | **String** | Gives an indication if the message has been accepted for delivery. The description field contains information on why a message may have been rejected.  | 
**message_id** | **String** | For an accepted message, ths will be a unique reference that can be used to check the messages status. Please refer to the Delivery Notification section.  Note that &#x60;messageId&#x60; will be different for each number that the message was sent to.  | 
**message_status_url** | **String** | For an accepted message, ths will be the URL that can be used to check the messages status. Please refer to the Delivery Notification section.  | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::Message.new(to: +61412345678,
                                 delivery_status: MessageWaiting,
                                 message_id: d997474900097a1f0000000008d7e18102cc0901-1261412345678,
                                 message_status_url: https://tapi.telstra.com/v2/messages/sms/d997474900097a1f0000000008d7e18102cc0901-1261412345678/status
)
```


