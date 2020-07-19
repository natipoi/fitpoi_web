
require 'openssl'
require 'Base64'
require 'httpclient'


# app_token = "EAAC3KYGFzNABAKNZC6fDxyiZBnsbfBBf77IVZBnh7YURYC7Nf76wLlDMyDfBakaVTCBu3vkh196ZAblaPVrxUXcqyZBZB1ZBuN7kmzWiQ2Nc1ia6cdJ7kynLZC1duVA4HyX69plozqHUkrIZBDfZBlqcZB9PsyqoTUnAMvMA0tSjHZAusQZDZD"
# business_id = "17841438602473274"
# secret = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), "2f5751058c8396f6559a3780cbe5fda4", app_token)

# url = 'https://graph.facebook.com/v7.0/' + business_id + '?fields=photos&access_token=' + app_token
# # url = "https://graph.facebook.com/v7.0/" + friend.uid + "/"


# client = HTTPClient.new()
# response = client.get(url)
# puts response.status #=> 200
# puts response.body #=> {"id": 1, "text": "todo"}

module Jekyll
    class EnvironmentVariablesGenerator < Generator
        def generate(site)
            site.config['env'] = {}
            ENV.each do |key, value|
                site.config['env'][key] = value
            end
        end
    end
end







