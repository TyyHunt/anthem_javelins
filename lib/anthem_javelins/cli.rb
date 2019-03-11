class AnthemJavelins::CLI 
  
  def call
    greeting
    list_javelins
    menu
    close
  end
  
  def greeting
    puts "Greetings freelancers, want to know more about Anthem's javelins?"
  end
  
  def list_javelins
    puts "Here is a list of Anthem's current javelins"
    @javelins = AnthemJavelins::Javelins.current
    @javelins.each.with_index(1) do |suit, i|
      puts "#{i}. #{suit.name}"
    end
    puts " "
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "If you would like more info, type the javelin name or 'exit'"
    puts "to see the list again type 'list'"
    input= gets.strip.downcase
      case input
      when "ranger"
        ranger_info = @javelins[0]
        puts "#{ranger_info.description}"
        puts "#{ranger_info.fighting_style_pairs}"
        puts "Speceial Ability - #{ranger_info.special_1}"
        puts "Speceial Ability - #{ranger_info.special_2}"
        puts "#{ranger_info.url}"
        puts " "
      when "colossus"
        colossus_info = @javelins[1]
        puts "#{colossus_info.description}"
        puts "#{colossus_info.fighting_style_pairs}"
        puts "Speceial Ability - #{colossus_info.special_1}"
        puts "Speceial Ability - #{colossus_info.special_2}"
        puts "#{colossus_info.url}"
        puts " "
      when "storm"
        storm_info = @javelins[2]
        puts "#{storm_info.description}"
        puts "#{storm_info.fighting_style_pairs}"
        puts "Speceial Ability - #{storm_info.special_1}"
        puts "Speceial Ability - #{storm_info.special_2}"
        puts "#{storm_info.url}"
        puts " "
      when "interceptor"
         interceptor_info = @javelins[3]
        puts "#{interceptor_info.description}"
        puts "#{interceptor_info.fighting_style_pairs}"
        puts "Speceial Ability - #{interceptor_info.special_1}"
        puts "Speceial Ability - #{interceptor_info.special_2}"
        puts "#{interceptor_info.url}"
        puts " "
      when "list"
        list_javelins
      end
    end
  end
  
  def close 
    puts "Good hunting, and Godsspeed"
  end
  
end