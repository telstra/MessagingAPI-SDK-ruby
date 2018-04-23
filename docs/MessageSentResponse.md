# Telstra_Messaging::MessageSentResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**Array&lt;Message&gt;**](Message.md) | An array of messages. | 
**message_type** | **String** | This returns whether the message sent was a SMS or MMS. | 
**number_segments** | **Integer** | For SMS messages only, the value indicates the number of 160 character message segments sent. | 
**number_national_destinations** | **Integer** | This returns the number of domestic Australian messages sent. | [optional] 
**number_international_destinations** | **Integer** | This returns the number of international messages sent | [optional] 


