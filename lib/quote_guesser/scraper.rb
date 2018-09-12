class QuoteGuesser::Scraper

  def self.scrape_adam
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/adam_neumann"))
    doc.search("div.clearfix a.b-qt").map {|q| q.text}.each do |quote|
      QuoteGuesser::Quotes.new(quote).author = "Adam Neumann"
    end
  end

  def self.scrape_rupaul
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/rupaul"))
    doc.search("div.clearfix a.b-qt").map {|q| q.text}.each do |quote|
      QuoteGuesser::Quotes.new(quote).author = "Rupaul"
    end
  end

end
