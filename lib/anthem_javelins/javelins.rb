class AnthemJavelins::Javelins 
  
  attr_accessor :name, :url, :description, :fighting_style, :special_1, :special_2
  
  def self.current 
    puts <<-DOC
      1. Ranger
      2. Colossus
      3. Storm
      4. Interceptor
      DOC
      
      self.scrape_javelins
  end
  
  def self.scrape_javelins
    javelins = []
    
    javelins << self.scrape_ranger
    javelins << self.scrape_colossus
    javelins << self.scrape_storm
    javelins << self.scrape_interceptor
    
    javelins
  end
  
  def self.scrape_ranger
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/ranger-javelin"))
    
    name = doc.search("h1.d2").text
    description = doc.css("p")[0].text
    fighting_style = doc.search("ea-details-table").text
    special_1 = doc.css("h4")[0].text
    special_2 = doc.css("h4")[1].text
    url = "https://www.ea.com/games/anthem/gameplay-features/ranger-javelin"
    binding.pry 
  end
  
  def self.scrape_colossus
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/colossus-javelin"))
    
    name = doc.search("h1.d2").text
    description = doc.css("p")[0].text
    fighting_style = doc.search("ea-details-table").text
    special_1 = doc.css("h4")[0].text
    special_2 = doc.css("h4")[1].text
    url = "https://www.ea.com/games/anthem/gameplay-features/colossus-javelin"
    binding.pry 
  end
  
  def self.scrape_storm
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/storm-javelin"))
    
    name = doc.search("h1.d2").text
    description = doc.css("p")[0].text
    fighting_style = doc.search("ea-details-table").text
    special_1 = doc.css("h4")[0].text
    special_2 = doc.css("h4")[1].text
    url = "https://www.ea.com/games/anthem/gameplay-features/storm-javelin"
    binding.pry 
  end
  
  def self.scrape_interceptor
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/interceptor-javelin"))
    
    name = doc.search("h1.d2").text
    description = doc.css("p")[0].text
    fighting_style = doc.search("ea-details-table").text
    special_1 = doc.css("h4")[0].text
    special_2 = doc.css("h4")[1].text
    url = "https://www.ea.com/games/anthem/gameplay-features/interceptor-javelin"
    binding.pry 
  end
  
end