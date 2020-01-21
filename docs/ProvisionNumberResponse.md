# Telstra_Messaging::ProvisionNumberResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_address** | **String** | The mobile phone number that was allocated | [optional] 
**expiry_date** | **Float** | Free Trial apps can only add activeDays for their provisioned number every 30 days. This is in Unix time format. | [optional] 

## Code Sample

```ruby
require 'Telstra_Messaging'

instance = Telstra_Messaging::ProvisionNumberResponse.new(destination_address: +61412345678,
                                 expiry_date: 1534463077362)
```


