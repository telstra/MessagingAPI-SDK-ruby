=begin
#Telstra Messaging API

# The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia's leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. 

OpenAPI spec version: 2.2.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Telstra_Messaging
  class MessagingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get MMS Status
    # Get MMS Status
    # @param messageid Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms
    # @param [Hash] opts the optional parameters
    # @return [Array<OutboundPollResponse>]
    def get_mms_status(messageid, opts = {})
      data, _status_code, _headers = get_mms_status_with_http_info(messageid, opts)
      return data
    end

    # Get MMS Status
    # Get MMS Status
    # @param messageid Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/mms
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OutboundPollResponse>, Fixnum, Hash)>] Array<OutboundPollResponse> data, response status code and response headers
    def get_mms_status_with_http_info(messageid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_mms_status ..."
      end
      # verify the required parameter 'messageid' is set
      if @api_client.config.client_side_validation && messageid.nil?
        fail ArgumentError, "Missing the required parameter 'messageid' when calling MessagingApi.get_mms_status"
      end
      # resource path
      local_var_path = "/messages/mms/{messageid}/status".sub('{' + 'messageid' + '}', messageid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<OutboundPollResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_mms_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SMS Status
    # Get Message Status
    # @param message_id Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms
    # @param [Hash] opts the optional parameters
    # @return [Array<OutboundPollResponse>]
    def get_sms_status(message_id, opts = {})
      data, _status_code, _headers = get_sms_status_with_http_info(message_id, opts)
      return data
    end

    # Get SMS Status
    # Get Message Status
    # @param message_id Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OutboundPollResponse>, Fixnum, Hash)>] Array<OutboundPollResponse> data, response status code and response headers
    def get_sms_status_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_sms_status ..."
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling MessagingApi.get_sms_status"
      end
      # resource path
      local_var_path = "/messages/sms/{messageId}/status".sub('{' + 'messageId' + '}', message_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<OutboundPollResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_sms_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve SMS Responses
    # Retrieve Messages
    # @param [Hash] opts the optional parameters
    # @return [InboundPollResponse]
    def retrieve_sms_responses(opts = {})
      data, _status_code, _headers = retrieve_sms_responses_with_http_info(opts)
      return data
    end

    # Retrieve SMS Responses
    # Retrieve Messages
    # @param [Hash] opts the optional parameters
    # @return [Array<(InboundPollResponse, Fixnum, Hash)>] InboundPollResponse data, response status code and response headers
    def retrieve_sms_responses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.retrieve_sms_responses ..."
      end
      # resource path
      local_var_path = "/messages/sms"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InboundPollResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#retrieve_sms_responses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send MMS
    # Send MMS
    # @param body A JSON or XML payload containing the recipient&#39;s phone number and MMS message.The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit
    # @param [Hash] opts the optional parameters
    # @return [MessageSentResponse]
    def send_mms(body, opts = {})
      data, _status_code, _headers = send_mms_with_http_info(body, opts)
      return data
    end

    # Send MMS
    # Send MMS
    # @param body A JSON or XML payload containing the recipient&#39;s phone number and MMS message.The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageSentResponse, Fixnum, Hash)>] MessageSentResponse data, response status code and response headers
    def send_mms_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.send_mms ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MessagingApi.send_mms"
      end
      # resource path
      local_var_path = "/messages/mms"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageSentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#send_mms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send SMS
    # Send Message
    # @param payload A JSON or XML payload containing the recipient&#39;s phone number and text message. The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit
    # @param [Hash] opts the optional parameters
    # @return [MessageSentResponse]
    def send_sms(payload, opts = {})
      data, _status_code, _headers = send_sms_with_http_info(payload, opts)
      return data
    end

    # Send SMS
    # Send Message
    # @param payload A JSON or XML payload containing the recipient&#39;s phone number and text message. The recipient number should be in the format &#39;04xxxxxxxx&#39; where x is a digit
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageSentResponse, Fixnum, Hash)>] MessageSentResponse data, response status code and response headers
    def send_sms_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.send_sms ..."
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling MessagingApi.send_sms"
      end
      # resource path
      local_var_path = "/messages/sms"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageSentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#send_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
