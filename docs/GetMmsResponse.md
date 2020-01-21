# Telstra_Messaging::GetMmsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | The final state of the message.  | 
**destination_address** | **String** | The number the message was sent to.  | 
**sender_address** | **String** | The number the message was sent from.  | 
**subject** | **String** | The subject assigned to the message.  | [optional] 
**message_id** | **String** | Message Id assigned by the MMSC.  | [optional] 
**api_msg_id** | **String** | Message Id assigned by the API.  | [optional] 
**sent_timestamp** | **String** | Time handling of the message ended.  | 
**mms_content** | [**Array&lt;MMSContent&gt;**](MMSContent.md) | An array of content that was received in an MMS message.  | 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::GetMmsResponse.new(status: RECEIVED,
                                 destination_address: 61412345678,
                                 sender_address: 61487654321,
                                 subject: null,
                                 message_id: null,
                                 api_msg_id: null,
                                 sent_timestamp: 2018-11-23T16:14:02+10:00,
                                 mms_content: null)
```


