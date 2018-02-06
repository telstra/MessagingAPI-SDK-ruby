=begin
#Telstra Messaging API

# The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. 

OpenAPI spec version: 2.2.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Telstra_Messaging::AuthenticationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationApi' do
  before do
    # run before each test
    @instance = Telstra_Messaging::AuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationApi' do
    it 'should create an instance of AuthenticationApi' do
      expect(@instance).to be_instance_of(Telstra_Messaging::AuthenticationApi)
    end
  end

  # unit tests for auth_token
  # Generate authentication token
  # Generate authentication token
  # @param client_id 
  # @param client_secret 
  # @param grant_type 
  # @param [Hash] opts the optional parameters
  # @return [OAuthResponse]
  describe 'auth_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
