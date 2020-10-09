class API
    # srp separation of responsibility principle
    # this is where i make a call to an api and get info to make objects out of 
    
    def self.get_polishes
        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_type=nail_polish"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        polish = JSON.parse(response)
        polish.each do |p|
            NailPolish.new(brand: p["brand"], name: p["name"].strip, price: p["price"], product_colors: p["product_colors"], tag_list: p["tag_list"], polish_list: p["polish_list"]) if p["brand"] != nil
        end 
    end 
end 





    


