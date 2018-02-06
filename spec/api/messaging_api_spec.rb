=begin
#Telstra Messaging API

# The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. 

OpenAPI spec version: 2.2.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Telstra_Messaging::MessagingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MessagingApi' do
  before do
    # run before each test
    @instance = Telstra_Messaging::MessagingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagingApi' do
    it 'should create an instance of MessagingApi' do
      expect(@instance).to be_instance_of(Telstra_Messaging::MessagingApi)
    end
  end

  # unit tests for get_mms_status
  # Get MMS Status
  # Get MMS Status
  # @param messageid Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms
  # @param [Hash] opts the optional parameters
  # @return [OutboundPollResponse]
  describe 'get_mms_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sms_status
  # Get SMS Status
  # Get Message Status
  # @param message_id Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms
  # @param [Hash] opts the optional parameters
  # @return [OutboundPollResponse]
  describe 'get_sms_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_sms_responses
  # Retrieve SMS Responses
  # Retrieve Messages
  # @param [Hash] opts the optional parameters
  # @return [Array<InboundPollResponse>]
  describe 'retrieve_sms_responses test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_mms
  # Send MMS
  # Send MMS
  # @param body A JSON or XML payload containing the recipient&#39;s phone number and MMS message.The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'send_mms test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_sms
  # Send SMS
  # Send Message
  # @param payload A JSON or XML payload containing the recipient&#39;s phone number and text message. The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit
  # @param [Hash] opts the optional parameters
  # @return [MessageSentResponse]
  describe 'send_sms test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end