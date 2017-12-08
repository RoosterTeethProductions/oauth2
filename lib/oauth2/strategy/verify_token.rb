module OAuth2
  module Strategy

    class VerifyToken < Base

      # Retrieve an access token given the specified validation code.
      #
      # @param [String] code The Authorization Code value
      # @param [Hash] params additional params
      # @param [Hash] opts options
      # @note that you must also provide a :redirect_uri with most OAuth 2.0 providers
      def verify_token(code, params = {}, opts = {})
        @client.get_token_info(code, opts)
      end
    end
  end
end
