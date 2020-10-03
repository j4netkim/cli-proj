class NailPolish
    attr_accessor :brand, :name, :price, :product_colors, :tag_list, :polish_list
    # the model

    @@all = []

    def initialize(brand:, name: nil, price: nil, product_colors: nil, tag_list: nil)
        @brand = brand
        @name = name 
        @price = price 
        @product_colors = product_colors
        @tag_list = tag_list
        @polish_list = polish_list
        @@all << self 
    end 

    def price 
        @price 
    end 

    def self.all 
        @@all 
    end 
    # custom getter. IMPLICIT RETURN. We're forcing evaluation here. 

    def self.find_by_tag(tag)
        @polish_list = self.all.select {|np| np.tag_list.include?(tag)} 
        @polish_list.each.with_index(1) do |p, i|
            puts "#{i}. #{p.name}"
        end 
    end 
        
end 

