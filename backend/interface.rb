require 'vestorly_api'

VestorlyApi.configure do |config|
  config.api_uri = 'https://api.vestorly.com'
end

# login and retrieve authentication token
api = VestorlyApi::SessionsApi
auth = api.login(hackathon03@gmail.com, aJB8fuTK).vestorly_auth

# retrieve and print a list of articles
api = VestorlyApi::ArticlesApi
response = api.find_articles(auth)
pp response