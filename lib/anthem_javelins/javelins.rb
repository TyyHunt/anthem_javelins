class AnthemJavelins::Javelins 
  
  attr_accessor :name, :url
  
  def self.current 
    puts <<-DOC
      1. Ranger
      2. Colossus
      3. Storm
      4. Interceptor
      DOC
      
      jav_ranger = self.new
      jav_ranger.name = "Ranger"
      jav_ranger.url = "https://www.ea.com/games/anthem/gameplay-features/ranger-javelin"
      
      jav_colossus = self.new
      jav_colossus.name = "Colossus"
      jav_colossus.url = "https://www.ea.com/games/anthem/gameplay-features/colossus-javelin"
      
      jav_storm = self.new
      jav_storm.name = "Storm"
      jav_storm.url = "https://www.ea.com/games/anthem/gameplay-features/storm-javelin"
      
      jav_interceptor = self.new
      jav_interceptor.name = "Interceptor"
      jav_interceptor.url = "https://www.ea.com/games/anthem/gameplay-features/interceptor-javelin"
  end
  
end