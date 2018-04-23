=begin
#Telstra Messaging API

# # Introduction  Send and receive SMS and MMS messages globally using Telstraâ€™s enterprise grade Messaging API. It also allows your application to track the delivery status of both sent and received messages. Get your dedicated Australian number, and start sending and receiving messages today.  # Features  <p>The Telstra Messaging API provides the features below. <table>   <thead>     <tr>       <th>Feature</th>       <th>Description</th>     </tr>   </thead>   <tbody>     <tr>       <td><code>Dedicated Number</code></td>       <td>Provision a mobile number for your account to be used as from address in the API</td>     </tr>     <tr>       <td><code>Send Messages</code></td>       <td>Sending SMS or MMS messages</td>     </tr>     <tr>       <td><code>Receive Messages</code></td>       <td>Telstra will deliver messages sent to a dedicated number or to the <code>notifyURL</code> defined by you</td>     </tr>     <tr>       <td><code>Broadcast Messages</code></td>       <td>Invoke a single API to send a message to a list of number provided in <code>to</code></td>     </tr>     <tr>       <td><code>Delivery Status</code></td>       <td>Query the delivery status of your messages</td>     </tr>     <tr>       <td><code>Callbacks</code></td>       <td>Provide a notification URL and Telstra will notify your app when messages status changes</td>     </tr>     <tr>       <td><code>Alphanumeric Identifier</code></td>       <td>Differentiate yourself by providing an alphanumeric string in <code>from</code>. This feature is only available on paid plans</td>     </tr>     <tr>       <td><code>Concatenation</code></td>       <td>Send messages up to 1900 characters long and Telstra will automaticaly segment and reassemble them</td>     </tr>     <tr>       <td><code>Reply Request</code></td>       <td>Create a chat session by associating <code>messageId</code> and <code>to</code> number to track responses received from a mobile number. We will store this association for 8 days</td>     </tr>     <tr>       <td><code>Character set</code></td>       <td>Accepts all Unicode characters as part of UTF-8</td>     </tr>     <tr>       <td><code>Bounce-back response</code></td>       <td>See if your SMS hits an unreachable or unallocated number (Australia Only)</td>     </tr>     <tr>       <td><code>Queuing</code></td>       <td>Messaging API will automatically queue and deliver each message at a compliant rate.</td>     </tr>     <tr>       <td><code>Emoji Encoding</code></td>       <td>The API supports the encoding of the full range of emojis. Emojis in the reply messages will be in their UTF-8 format.</td>     </tr>   </tbody> </table>   # Getting Access to the API  <ol>   <li>Register at <a href=\"https://dev.telstra.com\">https://dev.telstra.com</a>.   <li>After registration, login to <a href=\"https://dev.telstra.com\">https://dev.telstra.com</a>        and navigate to the &quot;My apps&quot; page.    <li>Create your application by clicking the &quot;Add new app&quot; button    <li>Select &quot;API Free Trial&quot; Product when configuring your application. This Product includes the Telstra Messaging API as well as other APIs. Your application will be approved automatically.   <li>There is a maximum of 1000 free messages per developer. Additional messages and features can be purchased from <a href=\"https://dev.telstra.com\">https://dev.telstra.com</a>.   <li>Note your <code>Client key</code> and <code>Client secret</code> as these will be needed to provision a number for your application and for authentication. </ol>  <p>Now head over to <b>Getting Started</b> where you can find a postman collection as well as some links to sample apps and SDKs to get you started. <p>Happy Messaging!   # Getting Started  <p>Below are the steps to get started with the Telstra Messaging API.</p>    <ol>     <li>Generate OAuth2 Token using your <code>Client key</code> and <code>Client secret</code>.</li>     <li>Create Subscription in order to receive a provisioned number.</li>     <li>Send Message to a specific mobile number.</li>   </ol>    <h2>Run in Postman</h2>    <p><a   href=\"https://app.getpostman.com/run-collection/ded00578f69a9deba256#?env%5BMessaging%20API%20Environments%5D=W3siZW5hYmxlZCI6dHJ1ZSwia2V5IjoiY2xpZW50X2lkIiwidmFsdWUiOiIiLCJ0eXBlIjoidGV4dCJ9LHsiZW5hYmxlZCI6dHJ1ZSwia2V5IjoiY2xpZW50X3NlY3JldCIsInZhbHVlIjoiIiwidHlwZSI6InRleHQifSx7ImVuYWJsZWQiOnRydWUsImtleSI6ImFjY2Vzc190b2tlbiIsInZhbHVlIjoiIiwidHlwZSI6InRleHQifSx7ImVuYWJsZWQiOnRydWUsImtleSI6Imhvc3QiLCJ2YWx1ZSI6InRhcGkudGVsc3RyYS5jb20iLCJ0eXBlIjoidGV4dCJ9LHsiZW5hYmxlZCI6dHJ1ZSwia2V5IjoiQXV0aG9yaXphdGlvbiIsInZhbHVlIjoiIiwidHlwZSI6InRleHQifSx7ImVuYWJsZWQiOnRydWUsImtleSI6Im9hdXRoX2hvc3QiLCJ2YWx1ZSI6InNhcGkudGVsc3RyYS5jb20iLCJ0eXBlIjoidGV4dCJ9LHsiZW5hYmxlZCI6dHJ1ZSwia2V5IjoibWVzc2FnZV9pZCIsInZhbHVlIjoiIiwidHlwZSI6InRleHQifV0=\">   <img src=\"https://run.pstmn.io/button.svg\" alt=\"Run in Postman\" /></a></p>    <h2>Sample Apps</h2>   - <a href=\"https://github.com/telstra/MessagingAPI-perl-sample-app\">Perl Sample App</a>   - <a href=\"https://github.com/telstra/messaging-sample-code-happy-chat\">Happy Chat App</a>   - <a href=\"https://github.com/developersteve/telstra-messaging-php\">PHP Sample App</a>    <h2>SDK repos</h2>   - <a href=\"https://github.com/telstra/MessagingAPI-SDK-php\">Messaging API - PHP SDK</a>   - <a href=\"https://github.com/telstra/MessagingAPI-SDK-python\">Messaging API - Python SDK</a>   - <a href=\"https://github.com/telstra/MessagingAPI-SDK-ruby\">Messaging API - Ruby SDK</a>   - <a href=\"https://github.com/telstra/MessagingAPI-SDK-node\">Messaging API - NodeJS SDK</a>   - <a href=\"https://github.com/telstra/MessagingAPI-SDK-dotnet\">Messaging API - .Net2 SDK</a>   - <a href=\"https://github.com/telstra/MessagingAPI-SDK-Java\">Messaging API - Java SDK</a>  # Delivery Notification  The API provides several methods for notifying when a message has been delivered to the destination.  <ol>   <li>When you provision a number there is an opportunity to specify a <code>notifyURL</code>, when the message has been delivered the API will make a call to this URL to advise of the message status. If this is not provided then you can make use the Get Replies API to poll for messages.</li>   <li>If you do not specify a URL you can always call the <code>GET /sms</code> API get the latest replies to the message.</li> </ol>  <I>Please note that the notification URLs and the polling call are exclusive. If a notification URL has been set then the polling call will not provide any useful information.</I>  <h2>Notification URL Format</h2>  When a message has reached its final state, the API will send a POST to the URL that has been previously specified.   <h3>Notification URL Format for SMS</h3> <pre><code class=\"language-sh\">{     to: '+61418123456'     sentTimestamp: '2017-03-17T10:05:22+10:00'     receivedTimestamp: '2017-03-17T10:05:23+10:00'     messageId: /cccb284200035236000000000ee9d074019e0301/1261418123456     deliveryStatus: DELIVRD   } </code></pre> \\ The fields are:  <table>   <thead>     <tr>       <th>Field</th>       <th>Description</th>     </tr>   </thead>   <tbody>     <tr>       <td><code>to</code></td>       <td>The number the message was sent to.</td>     </tr>     <tr>       <td><code>receivedTimestamp</code></td>       <td>Time the message was sent to the API.</td>     </tr>     <tr>       <td><code>sentTimestamp</code></td>       <td>Time handling of the message ended.</td>     </tr>     <tr>       <td><code>deliveryStatus</code></td>       <td>The final state of the message.</td>     </tr>     <tr>       <td><code>messageId</code></td>       <td>The same reference that was returned when the original message was sent.</td>     </tr>     <tr>       <td><code>receivedTimestamp</code></td>       <td>Time the message was sent to the API.</td>     </tr>   </tbody> </table>  Upon receiving this call it is expected that your servers will give a 204 (No Content) response. Anything else will cause the API to reattempt the call 5 minutes later.   <h3>Notification URL Format for SMS Replies</h3> <pre><code class=\"language-sh\">{     \"status\": \"RECEIVED\"     \"destinationAddress\": \"+61418123456\"     \"senderAddress\": \"+61421987654\"     \"message\": \"Foo\"             \"sentTimestamp\": \"2018-03-23T12:10:06+10:00\"   }                              </code></pre>  \\ The fields are:  <table>   <thead>     <tr>       <th>Field</th>       <th>Description</th>     </tr>   </thead>   <tbody>     <tr>       <td><code>status</code></td>       <td>The final state of the message.</td>     </tr>     <tr>       <td><code>destinationAddress</code></td>       <td>The number the message was sent to.</td>     </tr>     <tr>       <td><code>senderAddress</code></td>       <td>The number the message was sent from.</td>     </tr>     <tr>       <td><code>message</code></td>       <td>The sontent of the SMS reply.</td>     </tr>     <tr>       <td><code>sentTimestamp</code></td>       <td>Time handling of the message ended.</td>     </tr>   </tbody> </table>  <h3>Notification URL Format for MMS Replies</h3> <pre><code class=\"language-sh\">{     \"status\": \"RECEIVED\",     \"destinationAddress\": \"+61418123456\",     \"senderAddress\": \"+61421987654\",     \"subject\": \"Foo\",     \"sentTimestamp\": \"2018-03-23T12:15:45+10:00\",     \"envelope\": \"string\",     \"MMSContent\":      [       {         \"type\": \"application/smil\",         \"filename\": \"smil.xml\",         \"payload\": \"string\"       },        {         \"type\": \"image/jpeg\",         \"filename\": \"sample.jpeg\",         \"payload\": \"string\"        }      ]    } </code></pre>  \\ The fields are:  <table>   <thead>     <tr>       <th>Field</th>       <th>Description</th>     </tr>   </thead>   <tbody>     <tr>       <td><code>status</code></td>       <td>The final state of the message.</td>     </tr>     <tr>       <td><code>destinationAddress</code></td>       <td>The number the message was sent to.</td>     </tr>     <tr>       <td><code>senderAddress</code></td>       <td>The number the message was sent from.</td>     </tr>     <tr>       <td><code>subject</code></td>       <td>The subject assigned to the message.</td>     </tr>     <tr>       <td><code>sentTimestamp</code></td>       <td>Time handling of the message ended.</td>     </tr>     <tr>       <td><code>envelope</code></td>       <td>Information about about terminal type and originating operator.</td>     </tr>     <tr>       <td><code>MMSContent</code></td>       <td>An array of the actual content of the reply message.</td>     </tr>     <tr>       <td><code>type</code></td>       <td>The content type of the message.</td>     </tr>     <tr>       <td><code>filename</code></td>       <td>The filename for the message content.</td>     </tr>     <tr>       <td><code>payload</code></td>       <td>The content of the message.</td>     </tr>   </tbody> </table>  # Frequently Asked Questions **Q: Can I send a broadcast message using the Telstra Messging API?** A. Yes. Recipient numbers can be in teh form of an array of strings if a broadcast message needs to be sent.  <h2>Notes</h2> <a href=\"http://petstore.swagger.io/?url=https://raw.githubusercontent.com/telstra/MessagingAPI-v2/master/docs/swagger/messaging-api-swagger.yaml\" target=\"_blank\">View messaging in Swagger UI</a>

OpenAPI spec version: 2.2.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

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
    # If no notification URL has been specified, it is possible to poll for the message status. <pre><code class=\"language-sh\">  #!/bin/bash   #!/bin/bash   # Example of how to poll for a message status   AccessToken=\"Consumer Access Token\"   MessageId=\"Previous supplied Message Id, URL encoded\"   curl -X get -H \"Authorization: Bearer $AccessToken\" \\     -H \"Content-Type: application/json\" \\     \"https://tapi.telstra.com/v2/messages/sms/$MessageId\" </code></pre>  Note that the `MessageId` that appears in the URL must be URL encoded, just copying the `MessageId` as it was supplied when submitting the message may not work.
    # @param message_id Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms.
    # @param [Hash] opts the optional parameters
    # @return [Array<OutboundPollResponse>]
    def get_sms_status(message_id, opts = {})
      data, _status_code, _headers = get_sms_status_with_http_info(message_id, opts)
      return data
    end

    # Get SMS Status
    # If no notification URL has been specified, it is possible to poll for the message status. &lt;pre&gt;&lt;code class&#x3D;\&quot;language-sh\&quot;&gt;  #!/bin/bash   #!/bin/bash   # Example of how to poll for a message status   AccessToken&#x3D;\&quot;Consumer Access Token\&quot;   MessageId&#x3D;\&quot;Previous supplied Message Id, URL encoded\&quot;   curl -X get -H \&quot;Authorization: Bearer $AccessToken\&quot; \\     -H \&quot;Content-Type: application/json\&quot; \\     \&quot;https://tapi.telstra.com/v2/messages/sms/$MessageId\&quot; &lt;/code&gt;&lt;/pre&gt;  Note that the &#x60;MessageId&#x60; that appears in the URL must be URL encoded, just copying the &#x60;MessageId&#x60; as it was supplied when submitting the message may not work.
    # @param message_id Unique identifier of a message - it is the value returned from a previous POST call to https://api.telstra.com/v2/messages/sms.
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
    # Messages are retrieved one at a time, starting with the earliest response. The API supports the encoding of the full range of emojis in the reply message. The emojis will be in their UTF-8 format. If the subscription has a `notifyURL`, response messages will be logged there instead.
    # @param [Hash] opts the optional parameters
    # @return [InboundPollResponse]
    def retrieve_sms_responses(opts = {})
      data, _status_code, _headers = retrieve_sms_responses_with_http_info(opts)
      return data
    end

    # Retrieve SMS Responses
    # Messages are retrieved one at a time, starting with the earliest response. The API supports the encoding of the full range of emojis in the reply message. The emojis will be in their UTF-8 format. If the subscription has a &#x60;notifyURL&#x60;, response messages will be logged there instead.
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
    # Send an SMS Message to a single or multiple mobile number/s.  <h3>Send message to a single number: </h3> <pre><code class=\"language-sh\">  #!/bin/bash   # Use the Messaging API-v2 to send an SMS   # Note: only to: and body: are required   AccessToken=\"Access Token\"   Dest=\"Destination number\"   curl -X POST -H \"Authorization: Bearer $AccessToken\" -H \"Content-Type: application/json\" -d \"{     \\\"to\\\":\\\"$Dest\\\",     \\\"body\\\":\\\"Test Message\\\",     \\\"from\\\": \\\"+61412345678\\\",     \\\"validity\\\": 5,     \\\"scheduledDelivery\\\": 1,     \\\"notifyURL\\\": \\\"\\\",     \\\"replyRequest\\\": false     \\\"priority\\\": true   }\" \"https://tapi.telstra.com/v2/messages/sms\" </code></pre>  \\ <h3>Send message to multiple numbers: </h3> <pre><code class=\"language-sh\"> #!/bin/bash   # Use the Messaging API to send an SMS   AccessToken=\"Access Token\"   Dest=\"Destination number\"   curl -X post -H \"Authorization: Bearer $AccessToken\" \\     -H \"Content-Type: application/json\" \\     -d '{ \"to\":\"$dest1, $dest2, $dest3\", \"body\":\"Test Message\" }' \\     https://tapi.telstra.com/v2/messages/sms   <pre><code class=\"language-sh\">
    # @param payload A JSON or XML payload containing the recipient&#39;s phone number and text message.  This number can be in international format if preceeded by a â€˜+â€™ or in national format (&#39;04xxxxxxxx&#39;) where x is a digit.
    # @param [Hash] opts the optional parameters
    # @return [MessageSentResponse]
    def send_sms(payload, opts = {})
      data, _status_code, _headers = send_sms_with_http_info(payload, opts)
      return data
    end

    # Send SMS
    # Send an SMS Message to a single or multiple mobile number/s.  &lt;h3&gt;Send message to a single number: &lt;/h3&gt; &lt;pre&gt;&lt;code class&#x3D;\&quot;language-sh\&quot;&gt;  #!/bin/bash   # Use the Messaging API-v2 to send an SMS   # Note: only to: and body: are required   AccessToken&#x3D;\&quot;Access Token\&quot;   Dest&#x3D;\&quot;Destination number\&quot;   curl -X POST -H \&quot;Authorization: Bearer $AccessToken\&quot; -H \&quot;Content-Type: application/json\&quot; -d \&quot;{     \\\&quot;to\\\&quot;:\\\&quot;$Dest\\\&quot;,     \\\&quot;body\\\&quot;:\\\&quot;Test Message\\\&quot;,     \\\&quot;from\\\&quot;: \\\&quot;+61412345678\\\&quot;,     \\\&quot;validity\\\&quot;: 5,     \\\&quot;scheduledDelivery\\\&quot;: 1,     \\\&quot;notifyURL\\\&quot;: \\\&quot;\\\&quot;,     \\\&quot;replyRequest\\\&quot;: false     \\\&quot;priority\\\&quot;: true   }\&quot; \&quot;https://tapi.telstra.com/v2/messages/sms\&quot; &lt;/code&gt;&lt;/pre&gt;  \\ &lt;h3&gt;Send message to multiple numbers: &lt;/h3&gt; &lt;pre&gt;&lt;code class&#x3D;\&quot;language-sh\&quot;&gt; #!/bin/bash   # Use the Messaging API to send an SMS   AccessToken&#x3D;\&quot;Access Token\&quot;   Dest&#x3D;\&quot;Destination number\&quot;   curl -X post -H \&quot;Authorization: Bearer $AccessToken\&quot; \\     -H \&quot;Content-Type: application/json\&quot; \\     -d &#39;{ \&quot;to\&quot;:\&quot;$dest1, $dest2, $dest3\&quot;, \&quot;body\&quot;:\&quot;Test Message\&quot; }&#39; \\     https://tapi.telstra.com/v2/messages/sms   &lt;pre&gt;&lt;code class&#x3D;\&quot;language-sh\&quot;&gt;
    # @param payload A JSON or XML payload containing the recipient&#39;s phone number and text message.  This number can be in international format if preceeded by a â€˜+â€™ or in national format (&#39;04xxxxxxxx&#39;) where x is a digit.
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
