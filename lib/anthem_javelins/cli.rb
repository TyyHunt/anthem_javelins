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
        puts "
        #{ranger_info.description}
        #{ranger_info.fighting_style}
        #{ranger_info.special_1}
        #{ranger_info.special_2}
        #{ranger_info.url}
        "
      when "colossus"
        puts "info about Colossus"
      when "storm"
        puts "info about Storm"
      when "interceptor"
        puts "info about Interceptor"
      when "list"
        list_javelins
      end
    end
  end
  
  def close 
    puts "Good hunting, and Godsspeed"
  end
  
end