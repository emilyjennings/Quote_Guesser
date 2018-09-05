class QuoteGuesser::Scraper
  #schould be "scraper" class and the author class needs to be the "quote" class which also assigns authors
  attr_accessor :author, :content, :given_quote, :quote
  # @@quotes = []

  def self.scrape_adam
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/adam_neumann"))
    doc.search("div.clearfix a.b-qt").map {|q| q.text}
  end

  def self.scrape_rupaul
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/rupaul"))
    @array = doc.search("div.clearfix a.b-qt").map {|q| q.text}
    @array
  end


end
