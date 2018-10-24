require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class VoiceArchive < OmniAuth::Strategies::OAuth2
      option :name, 'voicearchive'

      option  :client_options,
              site: 'https://system.voicearchive.com',
              authorize_url: 'https://system.voicearchive.com/oauth/authorize',
              token_url: 'https://system.voicearchive.com/oauth/token'

      uid { raw_info['uid'] }

      info do
        raw_info.slice('uid', 'username', 'name', 'email', 'title', 'image', 'directphone')
      end

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/oauth/me').body)
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
