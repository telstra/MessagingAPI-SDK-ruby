=begin
#Telstra Messaging API

# The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. 

OpenAPI spec version: 2.2.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Telstra_Messaging::OutboundPollResponseInner
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OutboundPollResponseInner' do
  before do
    # run before each test
    @instance = Telstra_Messaging::OutboundPollResponseInner.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OutboundPollResponseInner' do
    it 'should create an instance of OutboundPollResponseInner' do
      expect(@instance).to be_instance_of(Telstra_Messaging::OutboundPollResponseInner)
    end
  end
  describe 'test attribute "to"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "received_timestamp"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sent_timestamp"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "delivery_status"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

