 class AnthemJavelins::Javelins 
  
  attr_accessor :name, :url, :description, :fighting_style, :fighting_style_pairs, :special_1, :special_2
  
  @@all = []
  
  def initialize(name=nil, url=nil)
    @name = name
    @url = url
    @@all << self
  end
  
  def self.new_from_index_page(item)
    self.new(
      item.css("h3").text,
      "https://www.ea.com#{item.css("a").attribute("href").text}"
      )
  end
  
  def self.all
    @@all
  end
  
  def my_method 
   puts "hello"
   return "beans"
   puts "hlello again"
   "potatoes"
  end
  
  
   def self.find(id)
    self.all[id-1]
  end
  
  def fighting_style
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
    @fighting_style ||= style_array
    @fighting_style_pairs ||= final
  end
  
  def description
    @description ||= doc.css("p")[0].text.strip
  end
  
  def special_move_1
  @special_move_1 ||= doc.css("h4")[0].text.strip
  end
  
  def special_move_2
  @special_move_2 ||= doc.css("h4")[1].text.strip
  end
  
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
  
end