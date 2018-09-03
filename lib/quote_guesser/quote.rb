class QuoteGuesser::Quote
  #schould be "scraper" class and the author class needs to be the "quote" class which also assigns authors
  attr_accessor :author, :content, :given_quote, :quote
  @@quotes = []
  @@rupaul_quotes = []
  @@adam_quotes = []

  def initialize
    #this needs to initilaize each quote as an object stored in an @@all kind of array
    #should take the individual quotes in the arrays and assign the text as the "content"
    #maybe this class is actually a Scraper class?
    @@quotes << self
  end

  def self.random_quote
    self.scrape_quotes.flatten.sample
  end

  def self.all_quotes
    self.scrape_quotes.flatten
  end

  def self.scrape_quotes
    @@quotes << self.scrape_adam
    @@quotes << self.scrape_rupaul
    @@quotes
  end

  def self.scrape_adam
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/adam_neumann"))
    @@adam_quotes = doc.search("div.clearfix a.b-qt").map {|q| q.text}
    @@adam_quotes
  end

  def self.scrape_rupaul
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/rupaul"))
    @@rupaul_quotes = doc.search("div.clearfix a.b-qt").map {|q| q.text}
    @@rupaul_quotes
  end

  def self.find_author(quote)
    #@quote = self.random_quote
    if self.scrape_rupaul.any?{|q| q == @quote}
      "RuPaul"
    else
      "Adam Neumann"
    end
  end

end
