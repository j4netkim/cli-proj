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
        API.get_polish
        input = ""


        # NailPolish.find_by_tag(polish)

        while input != 'Exit' do
            input = gets.strip
            polish = titleize(input)
            if polish.to_i > 0 && polish.to_i <= @polish_list.length
                puts "Hello"
            elsif polish == 'Vegan' || polish == 'Gluten Free' || polish == 'Dairy Free'
                NailPolish.find_by_tag(polish)
                prompt
            elsif polish == 'Exit'
                end_method
            else
                puts "Sorry, I'm not sure what you're trying to say. Lets try that again."
            end
        end
    end 



    def prompt
        puts ""
        puts "________________________________________________________________________________"
        puts ""
        puts "Please enter the number you would like to find more information on."
        puts ""
        puts "Otherwise hit 'exit' to exit."
        puts "________________________________________________________________________________"
        puts ""
    end


    def end_method
        puts "Thanks for using our finder! Have a great day :)"
    end



    def titleize(input)
        input.split(" ").map(&:capitalize).join(" ")
    end 


    # def print_polishes()
    # end 
end 
