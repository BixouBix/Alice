module Finicity
  PARTNER_SECRET = ENV['PARTNER_SECRET']
  FINICITY_APP_KEY = ENV['FINICITY_APP_KEY']
  PARTNER_ID = ENV['PARTNER_ID']
  BASE_PATH = 'https://api.finicity.com/'
  class Client
    class << self
      def token
        if @last_updated && @last_updated < DateTime.now - 2.hours
          @token = get_token
        else
          @token ||= get_token
        end
      end

      private

      def get_token
        @last_updated = DateTime.now
        uri = URI.parse("#{BASE_PATH}aggregation/v2/partners/authentication")
        request = Net::HTTP::Post.new(uri)
        request.content_type = "application/json"
        request["Finicity-App-Key"] = FINICITY_APP_KEY
        request["Accept"] = "application/json"
        request.body = JSON.dump({
          "partnerId" => PARTNER_ID,
          "partnerSecret" => PARTNER_SECRET
        })

        req_options = {
          use_ssl: uri.scheme == "https",
        }

        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        return JSON.parse(response.body)['token']
      end
    end
  end
end
