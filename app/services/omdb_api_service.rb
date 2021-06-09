class OmdbApiService
  include Singleton

  attr_reader :connection

  API_URL = "https://www.omdbapi.com"

  def initialize
    @connection = Faraday.new(API_URL) do |f|
      f.request :json # encode req bodies as JSON
      f.request :retry # retry transient failures
      f.response :follow_redirects # follow redirects
      f.response :json # decode response bodies as JSON
    end
  end

  def get_movie(i:)
    connection.get(nil, { apikey: ENV.fetch('IMDB_API_KEY', nil), i: i }).body
  end

end