# Telstra_Messaging::SendSmsMultiRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sms_multi** | [**Array&lt;MessageMulti&gt;**](MessageMulti.md) | Multiple SMS. Up to 10 messages can be sent in one API call. | [optional] 
**notiy_url** | **String** | Contains a URL that will be called once your message has been processed. The status may be delivered, expired, deleted, etc. Please refer to the Delivery Status section for more information.  If you are using a domain URL you must include the forward slash at the end of the URL (e.g. http://www.example.com/).  | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::SendSmsMultiRequest.new(sms_multi: null,
                                 notiy_url: http://www.example.com/)
```


