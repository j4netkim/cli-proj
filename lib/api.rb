class API
    # srp separation of responsibility principle
    # make a call to an api and get info to make objects out of 
    
    def self.get_polish
        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=nail_polish"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        # sending get request to the given url

        polish = JSON.parse(response)
        # using this to make business objects to use in cli to print out
        binding.pry

    end 




    


end