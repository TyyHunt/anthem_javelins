class AnthemJavelins::CLI 
  
  def call
    AnthemJavelins::Scraper.new.create_javelins
    puts "Greetings freelancers!"
    run_program
  end
  
  def run_program
    puts "Here is a list of the current javelins from Anthem"
    list_javelins
    puts ""
    more_info
  end
  
  def list_javelins
    AnthemJavelins::Javelins.all.each.with_index(1) do |javelin, index|
      puts "#{index}. #{javelin.name}"
    end
  end
  
  def more_info
    puts "If you would like more info, input the number of the corresponding javelin."
    input= gets.strip
      
      if !(1..4).include?(input.to_i) 
        puts "Sorry, this is not a valid input."
        more_info
      end
    
    current_javelin = AnthemJavelins::Javelins.find(input.to_i)
    
    javelin_specs(current_javelin)
    
    puts ""
    puts "Would you like information on another javelin? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      list_javelins
      more_info
    elsif input == "n"
      puts ""
      puts "Good hunting, and Godsspeed"
      exit
    else
      puts ""
      puts "Sorry, that is not a valid input."
      more_info
    end
  end

  
  def javelin_specs(javelin)
    puts ""
    puts "------------#{javelin.name}-------------"
    puts "#{javelin.description}"
    puts "Special Ability 1:      #{javelin.special_move_1}"
    puts "Special Ability 2:      #{javelin.special_move_2}"
    puts "Javelin Fighting Style:"
    puts "----------------------"
    puts "#{javelin.fighting_style}"
    puts "----------------------"
    puts "Website:  #{javelin.url}"

  end
  
end