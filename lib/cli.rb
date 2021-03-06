class CLI

    def product
        puts ""
        puts ""
        puts "__________________________________________________________________________________"
        puts ""
        puts "                     ~ Welcome to nail polish finder ~                               "
        puts "__________________________________________________________________________________"
        puts ""
        puts "Please enter 'Vegan', 'Gluten Free', or 'Dairy Free' tag for selections."
        puts ""
        puts "Input 'exit' to exit. Thank you!"
        puts "___________________________________________________________________________________"
        puts ""
        API.get_polishes
        input = gets.strip
        polish = titleize(input)

    

        while polish != 'Exit'

            if polish.to_i > 0 && polish.to_i <= NailPolish.all.length
                polish_obj = NailPolish.all.select {|np| np.tag_list.include?(@polish_type)}[input.to_i-1]
               
                if polish_obj
                    print_polish(polish_obj)
                else
                puts "Sorry, I'm not sure what you're trying to say. Lets try that again."
                end
                
            elsif polish == 'Vegan' || polish == 'Gluten Free' || polish == 'Dairy Free'
                @polish_type = polish
                polishes = NailPolish.all.select {|np| np.tag_list.include?(@polish_type)}
                print_polishes(polishes)

            else
                puts "Sorry, I'm not sure what you're trying to say. Lets try that again."
            end
            prompt 
            input = gets.strip
            polish = titleize(input)
        end
        puts "Thanks for using our finder! Have a great day :)"
    end 

         
    

    def print_polish(polish)
        puts "Name:"
        # binding.pry
        puts "#{polish.name}" 
        puts "" 
        puts "Brand:"
        puts "#{polish.brand}"
        puts ""
        puts "Price:"
        puts "$#{polish.price}"
        puts ""
        puts "Colors:"
        polish.product_colors.each.with_index do |color, i| 
            puts "#{i+1}. #{color["colour_name"]}"
        end 
        puts "" 
    end



    def prompt
        puts ""
        puts "________________________________________________________________________________"
        puts ""
        puts "Please enter the number you would like to see information on."
        puts ""
        puts "Or you can enter 'Vegan', 'Gluten Free', or 'Dairy Free' for more!"
        puts ""
        puts "Otherwise enter 'Exit' to exit."
        puts "________________________________________________________________________________"
        puts ""
    end
    


    def titleize(input)
        input.split(" ").map(&:capitalize).join(" ")
    end 



    def print_polishes(polish_list)
        polish_list.each.with_index do |p, i|
            puts "#{i+1}. #{p.name}"
        end
    end
end 


