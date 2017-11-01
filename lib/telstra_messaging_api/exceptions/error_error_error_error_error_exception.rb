# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module TelstraMessagingApi
  # Returns error status code and message
  class ErrorErrorErrorErrorErrorException < APIException
    # The status code.
    # @return [Integer]
    attr_accessor :status

    # Message describing the error.
    # @return [String]
    attr_accessor :message

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      hash = APIHelper.json_deserialize(@context.response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @status = hash['status']
      @message = hash['message']
    end
  end
end
