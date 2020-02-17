require 'Telstra_Messaging'

api_instance = Telstra_Messaging::AuthenticationApi.new
client_id = ENV["CLIENT_ID"] # String | 
client_secret = ENV["CLIENT_SECRET"] # String | 
grant_type = 'client_credentials' # String | 
opts = {
  scope: 'NSMS' # String | NSMS
}

begin
  #Generate OAuth2 token
  result = api_instance.auth_token(client_id, client_secret, grant_type, opts)
  puts "Token acquired!"

  Telstra_Messaging.configure do |config|
    # Configure OAuth2 access token for authorization: auth
    config.access_token = result.access_token
  end
  
  api_instance = Telstra_Messaging::ProvisioningApi.new
  body = Telstra_Messaging::ProvisionNumberRequest.new(active_days: 30)
  result = api_instance.create_subscription(body)
  puts "Number provisioned!"

  api_instance = Telstra_Messaging::MessagingApi.new
  payload = Telstra_Messaging::SendSMSRequest.new(to: ENV["PHONE_NO"],
    body: 'Testing Ruby SDK PR',
    from: ENV["FROM_ALIAS"])
  result = api_instance.send_sms(payload)
  p result

  
rescue Telstra_Messaging::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_token: #{e}"
end