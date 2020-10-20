class TmdbApi
    include HTTParty
    BASE_URL = "https://api.themoviedb.org/3/search/movie?"
    API_PARTIAL_URL = "api_key=#{ENV['TMDB']}"

    def query
        request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&language=en-US&" + @search_format).to_json
        @request_hash = JSON.parse(request)
    end

    def initialize(user_search_input)
        @search_format = "query=#{user_search_input.gsub(" ", "+")}&"
    end

    def build_info
        info_hash = self.query['results'][0]
        description = info_hash['overview']
        image = info_hash['poster_path']
        language = info_hash['original_language']
        release_date = info_hash['release_date']
        return {:description => description, :image => image, language => language, :release_date => release_date}
    end
end
