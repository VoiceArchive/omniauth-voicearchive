# OmniAuth VoiceArchive

Strategy to authenticate VoiceArchive in OmniAuth.

It's using the OAuth2 from the [VoiceArchive API](https://system.voicearchive.com)

## Usage

Add the strategy to your `Gemfile` alongside OmniAuth:

```ruby
gem 'omniauth'
gem 'omniauth-voicearchive'
```

Integrate this strategy to your OmniAuth middleware.

```ruby
use OmniAuth::Builder do
  provider :voicearchive, ENV['VOICEARCHIVE_CLIENT'], ENV['VOICEARCHIVE_SECRET']
end
```
