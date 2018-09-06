class QuoteGuesser::Scraper

  def self.scrape_adam
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/adam_neumann"))
    doc.search("div.clearfix a.b-qt").map {|q| q.text}
  end

  def self.scrape_rupaul
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/rupaul"))
    doc.search("div.clearfix a.b-qt").map {|q| q.text}
  end


end
