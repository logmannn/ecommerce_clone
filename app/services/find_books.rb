class Book

  # def initialize(zip)
  #   @zip = zip
  # end

  def self.get_books
    # response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + ',us&appid=[YOUR API KEY HERE]')
    # response["main"]["humidity"]

    response = RestClient.get('https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json', headers= {api_key: ENV['NYT_API_KEY']})
    # binding.pry
    JSON.parse(response)["results"]

  end
end
