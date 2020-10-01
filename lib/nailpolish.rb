class NailPolish
    # the model

    @@all = []

    def initialize
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
    # custom getter. IMPLICIT RETURN. We're forcing evaluation here. 


end 