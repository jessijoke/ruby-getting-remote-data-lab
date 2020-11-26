require 'open-uri'
require 'net/http'

class GetRequester

    def initialize(url)
        @url = url
        get_response_body
    end

    def get_response_body
        url = @url
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body 
    end

    def parse_json
        info = get_response_body
        JSON.parse(info)
    end
end