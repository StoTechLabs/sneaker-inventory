require './lib/style'
require './lib/shoe'

def main_menu	
	system 'clear'
	puts "###SNEAKER INVENTORY###"
	puts "\n\n"
	puts "Press 'a' to add a Style, press 'l' to list Stlyes press 'x' to exit"
	user_choice = gets.chomp
		if user_choice == 'a'
			add_style
		elsif user_choice == 'l'
			list_style
		elsif user_choice == 'x'
			puts "Thanks for using Joshua's Inventory"
			exit
		else
			puts "Not a valid entry! Please try again"
		end
end



main_menu