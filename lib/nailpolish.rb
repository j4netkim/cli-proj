class NailPolish
    attr_accessor :brand, :name, :price, :product_colors, :tag_list, :polish_list


    @@all = []


    def initialize(brand: nil, name: nil, price: nil, product_colors: nil, tag_list: nil, polish_list: nil)
        @brand = brand
        @name = name 
        @price = price 
        @product_colors = product_colors
        @tag_list = tag_list
        @polish_list = polish_list
        @@all << self
    end 



    def self.all 
        @@all 
    end  
end



