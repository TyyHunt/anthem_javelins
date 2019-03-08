class AnthemJavelins::CLI 
  
  def call
    menu
  end
  
  def menu
    puts "Want to know more about Anthem's javelins?"
    puts "Here is a list of Anthem's current javelins"
    puts <<-DOC
      1. Hunter Javelin
      2. Colossus Javelin
      3. Storm Javelin
      4. Interceptor Javelin
      DOC
      
  end
  
end