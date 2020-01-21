# Telstra_Messaging::GetSubscriptionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_days** | **String** | Number of active days | [optional] 
**notify_url** | **String** | Notify url configured | [optional] 
**destination_address** | **String** | The mobile phone number that was allocated | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::GetSubscriptionResponse.new(active_days: null,
                                 notify_url: null,
                                 destination_address: null)
```


