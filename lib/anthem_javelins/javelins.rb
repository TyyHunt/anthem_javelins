class AnthemJavelins::Javelins 
  
  attr_accessor :name, :url, :description, :fighting_style, :fighting_style_pairs, :special_1, :special_2
  
  def self.current 
    
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
    
    ranger = self.new
    
    transition_1 = doc.search("ea-details-table").text.split("\n")
    transition_2 = transition_1.collect do |index|
                    index.strip
                  end
    style_array = transition_2.reject { |i| i.empty? }
    transition_4 = style_array.map.with_index do |string, index|
                   if index.odd?
                     string + "\n"
                   else
                     string
                   end
                 end
    final = transition_4.join(",").gsub(",", " ")
    ranger.fighting_style = style_array
    ranger.fighting_style_pairs = final
    ranger.name = doc.search("h1.d2").text
    ranger.description = doc.css("p")[0].text.strip
    ranger.special_1 = doc.css("h4")[0].text.strip
    ranger.special_2 = doc.css("h4")[1].text.strip
    ranger.url = "https://www.ea.com/games/anthem/gameplay-features/ranger-javelin"
    ranger 

  end
  
  def self.scrape_colossus
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/colossus-javelin"))
    
    colossus = self.new
    
    transition_1 = doc.search("ea-details-table").text.split("\n")
    transition_2 = transition_1.collect do |index|
                    index.strip
                  end
    style_array = transition_2.reject { |i| i.empty? }
    transition_4 = style_array.map.with_index do |string, index|
                   if index.odd?
                     string + "\n"
                   else
                     string
                   end
                 end
    final = transition_4.join(",").gsub(",", " ")
    colossus.fighting_style = style_array
    colossus.fighting_style_pairs = final
    colossus.name = doc.search("h1.d2").text
    colossus.description = doc.css("p")[0].text
    colossus.special_1 = doc.css("h4")[0].text
    colossus.special_2 = doc.css("h4")[1].text
    colossus.url = "https://www.ea.com/games/anthem/gameplay-features/colossus-javelin"
    colossus 
  end
  
  def self.scrape_storm
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/storm-javelin"))
    
    storm = self.new
    
    transition_1 = doc.search("ea-details-table").text.split("\n")
    transition_2 = transition_1.collect do |index|
                    index.strip
                  end
    style_array = transition_2.reject { |i| i.empty? }
    transition_4 = style_array.map.with_index do |string, index|
                   if index.odd?
                     string + "\n"
                   else
                     string
                   end
                 end
    final = transition_4.join(",").gsub(",", " ")
    storm.fighting_style = style_array
    storm.fighting_style_pairs = final
    storm.name = doc.search("h1.d2").text
    storm.description = doc.css("p")[0].text
    storm.special_1 = doc.css("h4")[0].text
    storm.special_2 = doc.css("h4")[1].text
    storm.url = "https://www.ea.com/games/anthem/gameplay-features/storm-javelin"
    storm 
  end
  
  def self.scrape_interceptor
    
    doc = Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features/interceptor-javelin"))
    
    interceptor = self.new
    
    transition_1 = doc.search("ea-details-table").text.split("\n")
    transition_2 = transition_1.collect do |index|
                    index.strip
                  end
    style_array = transition_2.reject { |i| i.empty? }
    transition_4 = style_array.map.with_index do |string, index|
                   if index.odd?
                     string + "\n"
                   else
                     string
                   end
                 end
    final = transition_4.join(",").gsub(",", " ")
    interceptor.fighting_style = style_array
    interceptor.fighting_style_pairs = final
    interceptor.name = doc.search("h1.d2").text
    interceptor.description = doc.css("p")[0].text
    interceptor.special_1 = doc.css("h4")[0].text
    interceptor.special_2 = doc.css("h4")[1].text
    interceptor.url = "https://www.ea.com/games/anthem/gameplay-features/interceptor-javelin"
    interceptor 
  end
 
end