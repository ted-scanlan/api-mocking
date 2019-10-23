require 'sinatra/base'
require_relative './lib/country_search.rb'

class NewsSummary < Sinatra::Base
  get '/' do
      erb(:index)
  end

  post '/result' do
    @country = params[:country]

    @search = CountrySearch.new(@country)
    @result = @search.call_api
    erb(:result)


  end

  run! if app_file == $0
end
