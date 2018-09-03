class QuoteGuesser::Quote
  attr_accessor :author, :content, :given_quote
  @@quotes = []
  @@rupaul_quotes = []
  @@adam_quotes = []

  def initialize
    @@quotes << self
  end
  #later maybe create an object for quotes and one for authors.
  #they collaborate by an author being either RuPaul or Adam, associated only with those arrays. need three methods?
  #the quotes are assigned an author depending on one of th arrays they're in
  #then the player enters a guess and if the quote's author matches, it's correct. Iteration happens at a different point - in Author class

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

  def self.find_author
    @given_quote = self.random_quote
    if self.scrape_rupaul.any?{|q| q == @given_quote}
      "RuPaul"
    else
      "Adam Neumann"
    end
  end

end
