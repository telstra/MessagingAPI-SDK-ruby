# Telstra_Messaging::MessageSentResponseSms

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**Array&lt;Message&gt;**](Message.md) | An array of messages. | 
**country** | **Array&lt;Object&gt;** | An array of the countries to which the destination MSISDNs belong. | [optional] 
**message_type** | **String** | This returns whether the message sent was a SMS or MMS. | 
**number_segments** | **Integer** | A message which has 160 GSM-7 characters or less will have numberSegments&#x3D;1. Note that multi-part messages which are over 160 GSM-7 characters will include the User Data Header as part of the numberSegments. The User Data Header is being used for the re-assembly of the messages.  | 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::MessageSentResponseSms.new(messages: null,
                                 country: [{AUS&#x3D;1}],
                                 message_type: SMS,
                                 number_segments: 1)
```


