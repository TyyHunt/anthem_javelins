class AnthemJavelins::Javelins 
  
  def self.current 
    puts <<-DOC
      1. Ranger
      2. Colossus
      3. Storm
      4. Interceptor
      DOC
      
      jav_ranger = self.new
      jav_ranger.name = "Ranger"
      
      jav_colossus = self.new
      jav_colossus.name = "Colossus"
      
      jav_storm = self.new
      jav_storm.name = "Storm"
      
      jav_interceptor = self.new
      jav_interceptor.name = "Interceptor"
  end
  
end