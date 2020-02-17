# Telstra_Messaging::MessageSentResponseMms

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**Array&lt;Message&gt;**](Message.md) | An array of messages. | 
**mms_media_kb** | **Integer** | Indicates the message size in kB of the MMS sent.  | [optional] 
**country** | **Array&lt;Object&gt;** | An array of the countries to which the destination MSISDNs belong. | [optional] 
**message_type** | **String** | This returns whether the message sent was a SMS or MMS. | 
**number_segments** | **Integer** | MMS with numberSegments below 600 are classed as Small whereas those that are bigger than 600 are classed as Large. They will be charged accordingly.  | 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::MessageSentResponseMms.new(messages: null,
                                 mms_media_kb: 2,
                                 country: [{AUS&#x3D;1}],
                                 message_type: MMS,
                                 number_segments: 4)
```


