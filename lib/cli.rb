class CLI

    def product
        API.get_polish
        puts ""
        puts "_____________________________"
        puts ""
        puts "Welcome to nail polish finder"
        puts "__________________________________________________________________________________"
        puts ""
        puts "Please enter one of the tags 'vegan', 'glutenfree', or 'dairyfree' for selections."
        puts ""
        puts "Input 'exit' to exit. Thank you!"
        puts "___________________________________________________________________________________"
        puts ""
       
        @tag = gets.strip.downcase
        

    end 

end 