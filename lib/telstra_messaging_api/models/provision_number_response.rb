# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module TelstraMessagingApi
  # ProvisionNumberResponse Model.
  class ProvisionNumberResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :active_days

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :notify_url

    # The mobile phone number that was allocated
    # @return [String]
    attr_accessor :destination_address

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['active_days'] = 'activeDays'
        @_hash['notify_url'] = 'notifyURL'
        @_hash['destination_address'] = 'destinationAddress'
      end
      @_hash
    end

    def initialize(active_days = nil,
                   notify_url = nil,
                   destination_address = nil)
      @active_days = active_days
      @notify_url = notify_url
      @destination_address = destination_address
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      active_days = hash['activeDays']
      notify_url = hash['notifyURL']
      destination_address = hash['destinationAddress']

      # Create object from extracted values.
      ProvisionNumberResponse.new(active_days,
                                  notify_url,
                                  destination_address)
    end
  end
end
