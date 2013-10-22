module Pidgey
  class Api
    include HTTParty

    base_uri 'https://sendgrid.com/api/'

    attr_reader :api_user, :api_key

    # Creates a new API client.
    # @param [String] api_user sengrid api username
    # @param [String] api_key sengrid api key
    # @return [Pidget::API] the API client
    def initialize(api_user, api_key)
      @api_user = api_user
      @api_key = api_key
    end

    # Includes list methods defined in pidget/list.rb
    include ::Pidgey::List
    include ::Pidgey::Email

    def get(path, options)
      options[:query].merge!({ api_user: @api_user, api_key: @api_key })
      response = self.class.post(path, options).parsed_response

      return JSON.parse(response)
    end

    def post(path, options = {})
      options[:query].merge!({ api_user: @api_user, api_key: @api_key })
      response = self.class.post(path, options).parsed_response

      return JSON.parse(response)
    end
  end
end
