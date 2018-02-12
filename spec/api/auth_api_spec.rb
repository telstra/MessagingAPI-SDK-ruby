=begin
#Telstra Messaging API

# The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. 

OpenAPI spec version: 2.2.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Telstra_Messaging::AuthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @instance = Telstra_Messaging::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@instance).to be_instance_of(Telstra_Messaging::AuthApi)
    end
  end

  # unit tests for oauth_token_post
  # AuthGeneratetokenPost
  # generate auth token
  # @param o_auth_client_id 
  # @param o_auth_client_secret 
  # @param [Hash] opts the optional parameters
  # @return [AuthgeneratetokenpostResponse]
  describe 'oauth_token_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
