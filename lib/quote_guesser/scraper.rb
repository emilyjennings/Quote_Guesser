class QuoteGuesser::Scraper
  #schould be "scraper" class and the author class needs to be the "quote" class which also assigns authors
  attr_accessor :author, :content, :given_quote, :quote
  # @@quotes = []
  @@rupaul_quotes = []
  @@adam_quotes = []

  def initialize(quote)
    @quote = quote
    @author = author
  end
  #
  # def self.all_quotes
  #   @@quotes
  # end
  #
  # def self.save_both
  #   @@quotes << @@adam_quotes
  #   @@quotes << @@rupaul_quotes
  # end

  def self.scrape_adam
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/adam_neumann"))
    @@adam_quotes = doc.search("div.clearfix a.b-qt").map {|q| q.text}
  end

  def self.all_adam_quotes
    self.scrape_adam
    quotes_authors_array = []
    @@adam_quotes.each do |quote|
      quote = self.new(quote)
      quote.author = "Adam Neumann"
      quotes_authors_array << quote
    end
    quotes_authors_array
  end

  def self.scrape_rupaul
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/rupaul"))
    @@rupaul_quotes = doc.search("div.clearfix a.b-qt").map {|q| q.text}
  end

  def self.all_rupaul_quotes
    self.scrape_rupaul
    quotes_authors_array = []
    @@rupaul_quotes.each do |quote|
      quote = self.new(quote)
      quote.author = "Rupaul"
      quotes_authors_array << quote
    end
    quotes_authors_array
  end


end
