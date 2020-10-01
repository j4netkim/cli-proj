class NailPolish
    attr_accessor :brand, :name, :price, :colour
    # the model

    @@all = []

    def initialize
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
    # custom getter. IMPLICIT RETURN. We're forcing evaluation here. 

    def self.find_by_tag(tag)
        @@all


end 