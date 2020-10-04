class CLI
    attr_accessor :polish_list
    


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
        polish = titleize(input)



        until polish == 'Exit' do
            input = gets.strip
            polish = titleize(input)
            # binding.pry
            if polish.to_i > 0 && polish.to_i <= NailPolish.new(polish_list.length)
                get_price(input)
            elsif polish == 'Vegan' || polish == 'Gluten Free' || polish == 'Dairy Free'
                NailPolish.find_by_tag(polish)
                prompt
            elsif polish == 'Exit'
                puts "Thanks for using our finder! Have a great day :)"
            else
                puts "Sorry, I'm not sure what you're trying to say. Lets try that again."
            end
        end
    end 

    # def polish_list
    #     np = NailPolish.new()
    #     print(np.polish_list)
    # end 





    def prompt
        puts ""
        puts "________________________________________________________________________________"
        puts ""
        puts "Please enter the number you would like to see the price of."
        puts ""
        puts "Otherwise hit 'Exit' to exit."
        puts "________________________________________________________________________________"
        puts ""
    end

    def prompt_two
        puts ""
        puts "________________________________________________________________________________"
        puts ""
        puts "Please enter another tag 'Vegan', 'Gluten Free' or 'Dairy Free'."
        puts ""
        puts "Otherwise hit 'Exit' to exit."
        puts "________________________________________________________________________________"
        puts ""
    end
    
    


    def get_price(input)
        price_list = @polish_list.each {|np| puts np.price} 
        price = price_list[(input.to_i)-1]
        puts price
    end 

    def titleize(input)
        input.split(" ").map(&:capitalize).join(" ")
    end 
end

