# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module TelstraMessagingApi
  # OAuth 2 Authorization endpoint response
  class OAuthToken < BaseModel
    # Access token
    # @return [String]
    attr_accessor :access_token

    # Type of access token
    # @return [String]
    attr_accessor :token_type

    # Time in seconds before the access token expires
    # @return [Long]
    attr_accessor :expires_in

    # List of scopes granted
    # This is a space-delimited list of strings.
    # @return [String]
    attr_accessor :scope

    # Time of token expiry as unix timestamp (UTC)
    # @return [Long]
    attr_accessor :expiry

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['access_token'] = 'access_token'
        @_hash['token_type'] = 'token_type'
        @_hash['expires_in'] = 'expires_in'
        @_hash['scope'] = 'scope'
        @_hash['expiry'] = 'expiry'
      end
      @_hash
    end

    def initialize(access_token = nil,
                   token_type = nil,
                   expires_in = nil,
                   scope = nil,
                   expiry = nil)
      @access_token = access_token
      @token_type = token_type
      @expires_in = expires_in
      @scope = scope
      @expiry = expiry
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_token = hash['access_token']
      token_type = hash['token_type']
      expires_in = hash['expires_in']
      scope = hash['scope']
      expiry = hash['expiry']

      # Create object from extracted values.
      OAuthToken.new(access_token,
                     token_type,
                     expires_in,
                     scope,
                     expiry)
    end
  end
end
