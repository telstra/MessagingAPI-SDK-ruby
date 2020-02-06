# Telstra_Messaging::SendSmsMultiRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sms_multi** | [**Array&lt;MessageMulti&gt;**](MessageMulti.md) | Multiple SMS. Up to 10 messages can be sent in one API call. | [optional] 
**notify_url** | **String** | Contains a URL that will be called once your message has been processed. The status may be delivered, expired, deleted, etc. Please refer to the Delivery Status section for more information.  If you are using a domain URL you must include the forward slash at the end of the URL (e.g. http://www.example.com/).  This is required when &#x60;\&quot;receiptOff\&quot;&#x60; is missing or &#x60;\&quot;receiptOff\&quot;:\&quot;false\&quot;&#x60;.  | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::SendSmsMultiRequest.new(sms_multi: null,
                                 notify_url: http://www.example.com/)
```


