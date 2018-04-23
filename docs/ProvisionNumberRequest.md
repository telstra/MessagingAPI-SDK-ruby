# Telstra_Messaging::ProvisionNumberRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_days** | **Integer** | The number of days before for which this number is provisioned. Usually this will be same as the plan you buy. | [optional] 
**notify_url** | **String** | A callback URL that will be POSTed to whenever a new message arrives at this destination address. If this is not provided then you can make use the Get Replies API to poll for messages. | [optional] 
**callback_data** | **String** | A JSON that will be sent as the body in the POST to the notifyURL. This can be any meaningful data relevant to your application. | [optional] 


