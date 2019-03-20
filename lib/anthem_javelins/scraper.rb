class AnthemJavelins::Scraper
  
  def page_scraper
    Nokogiri::HTML(open("https://www.ea.com/games/anthem/gameplay-features"))
  end
  
  def scrape_javelins_index
    self.page_scraper.css("ea-container ea-tile")[1..4]
  end
  
  def create_javelins
    scrape_javelins_index do |jav|
      AnthemJavelins::Javelins.new_from_index_page(jav)
    end
  end
    
end