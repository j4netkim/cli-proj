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
        # everytime I make a nail polish object Im shoveling in self, the object im initializing
    end 



    def self.all 
        @@all 
    end 



  
end

        # @polish_list = self.all.select {|np| np.tag_list.include?(tag)} 
        # now give me a numbered list of those specific polishes



