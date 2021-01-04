# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'open-uri'
require 'json'

class GetPograms

    def initialize(url)
        @url = url
    end

    def get_response
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def get_info
        info = JSON.parse(self.get_response)
        info
    end


end



jobs = GetPograms.new("https://linkupjobsearch-linkup-job-search-v1.p.rapidapi.com/developers/v-1/search-handler.js?api_key=null&embedded_search_key=null&orig_ip=null&keyword=null&location=null&distance=null")
p jobs.get_info