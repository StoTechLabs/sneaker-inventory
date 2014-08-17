require './lib/style'
require './lib/shoe'

@current_style = nil
@current_shoe = nil

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

def add_style
	puts "Type in the name of the stye you would like to add to the Inventory"
	name_choice = gets.chomp 
	puts "Type in the color for this style"
	color_choice = gets.chomp
	@current_style = Style.new({:name => name_choice, :color => color_choice})
	@current_style.save
	sleep(0.5)
	puts "Style has been added"
	add_shoe
end

def add_shoe
	puts "Please add a shoe size for this style"
	sleep(0.5)
	size_choice = gets.chomp
	puts "Now add the quantity for this size"
	quantity_choice = gets.chomp
	@current_shoe = Shoe.new({:size => size_choice, :quantity => quantity_choice})
	@current_shoe.save
	@current_style.add_shoe(@current_shoe)
	sleep(0.5)	
	puts "Size and quantity have been added"
		loop do
    puts "Type 'a' to add another shoe, or 'm' to go back to the main menu."
    choice = gets.chomp
    if choice == 'a'
      add_shoe
    elsif choice == 'm'
      main_menu
    else
      puts "Not a valid entry, please try again."
    end
	end
	main_menu
end

def list_style
  puts "Here is your list of styles."
  Style.all.each do |style|
    puts style.name
  end
  puts "Type a style name to see the shoe size and quantity information."
  list_style = gets.chomp
  Style.all.each do |style|
    if list_style == style.name
      @current_style = style
    end
  end
  list_shoes
end

def list_shoes
  puts "Here is your list of shoes."
  @current_style.shoes.each do |shoe|
    puts "Shoe size:" + shoe.size + " " + "Shoe quantity: " + shoe.quantity
  end

  sleep(0.5)
  puts "Type in another style name to see the shoe information for a different style or 'm' to go back to the main menu."
  choice = gets.chomp
  
  Style.all.each do |style|
	  if choice == style.name
	    @current_style = style
	  end
	end

  @current_style.shoes.each do |shoe|
    puts "Shoe size:" + shoe.size + " " + "Shoe quantity: " + style.quantity
  end

	if choice == 'm'
    main_menu
  else
    puts "Not a valid entry, please try again."
	end
end



  
 


	



main_menu