
require 'net/http'

class CountrySearch

  def initialize(country)
    @country = country

  end


  def call_api
    uri = URI("https://restcountries.eu/rest/v2/name/#{@country}")
    p uri.port
    Net::HTTP.start(uri.host, uri.port) do |http|

    res = Net::HTTP.get(uri)
    return res

  end






end



end




#
# uri = URI("https://restcountries.eu/rest/v2/name/#{@country}")
# req = Net::HTTP::Get.new(uri)
# p req
# Net::HTTP.start(uri.host, uri.port) {|http|
#   response = http.request(req)
#   puts response
# }
