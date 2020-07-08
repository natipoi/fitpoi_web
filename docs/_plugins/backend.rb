
require 'openssl'
require 'Base64'
require 'httpclient'


app_token = "EAAEIkS05XYsBAJ7ijUw4fu9HeWhWxe9o62QLqFXRxmXDKYK1TvANVRUPGBjqiJpjcFdVRrzJcuGz8jgClZAHL5uDwIDsVzVzYGMnavPbMPtW3uMWL8eFdVJl8fmEFw9NWGfhyEWRNQae04SrdXHacfQzeblSlz7yax5RuZBAZDZD"
business_id = "111946820571734"
secret = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), "2f5751058c8396f6559a3780cbe5fda4", app_token)

url = 'https://graph.facebook.com/v7.0/' + business_id + '?fields=photos&access_token=' + app_token + '&appsecret_proof=' + secret
# url = "https://graph.facebook.com/v7.0/" + friend.uid + "/"


client = HTTPClient.new()
response = client.get(url)
puts response.status #=> 200
puts response.body #=> {"id": 1, "text": "todo"}





