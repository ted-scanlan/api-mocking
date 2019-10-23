
Dir.chdir(File.dirname(__FILE__))
require 'webmock'
include WebMock::API

WebMock.enable!


feature 'user searches for country' do
  scenario "with valid country" do
    json_response = File.open("./fixtures/country_info.json")
    stub_request(:get, "https://restcountries.eu/rest/v2/name/#{@country}").
    to_return(status: 200, body: json_response)
  end
end






# feature 'Viewing bookmark' do
#   scenario 'A user can see repo list' do
#     visit('/bookmarks')
#
#     expect(page)
#   end
# end
