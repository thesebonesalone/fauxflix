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
        #byebug
        info_hash = self.query['results'][0]
        if info_hash
            description = info_hash['overview']
            image = info_hash['poster_path']
            language = info_hash['original_language']
            release_date = info_hash['release_date']
            return {:description => description, :image => image, language => language, :release_date => release_date}
        else
            return {:description => "This movie was not found at the moment!", :image => "w94_and_h141_bestv2/ezQpwZnYcOEeyER0wKSdATkxUUE.jpg", language => "NA", :release_date => "The Past"}
        end
    end
end
