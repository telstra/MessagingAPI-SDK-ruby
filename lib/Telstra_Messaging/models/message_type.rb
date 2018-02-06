=begin
#Telstra Messaging API

# The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. 

OpenAPI spec version: 2.2.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Telstra_Messaging
  class MessageType
    
    SMS = "SMS".freeze
    MMS = "MMS".freeze
    RCS = "RCS".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = MessageType.constants.select{|c| MessageType::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #MessageType" if constantValues.empty?
      value
    end
  end

end