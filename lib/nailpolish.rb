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



    def self.find_by_tag(tag)
        @polish_list = self.all.select {|np| np.tag_list.include?(tag)} 
    
        @polish_list.each.with_index do |p, i|
            puts "#{i+1}. #{p.name}"
            # now give me a numbered list of those specific polishes
        end 
    end 


end 


