class QuoteGuesser::Quote
  attr_accessor :author, :content, :url, :adam_quotes, :rupaul_quotes
  @@quotes = []

  def self.random
    self.scrape_quotes.flatten.sample
  end

  def self.scrape_quotes
    @@quotes << self.scrape_adam
    @@quotes << self.scrape_rupaul
  end

  def self.scrape_adam
    #is it better in instantiate each object as a quote with an author in their own class?
    #this quote class can then just handle making all the quotes go in a big array. later, iterate through them and match quotes with authors in their own arrays
    #anyway, these two methods can first put all quotes into a big array. worry about matching the authors later
    @adam_quotes = []
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/adam_neumann"))
    @adam_quotes = doc.search("div.clearfix a.b-qt").map {|q| q.text}
    @adam_quotes
  end

  def self.scrape_rupaul
    @rupaul_quotes = []
    doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/rupaul"))
    @rupaul_quotes = doc.search("div.clearfix a.b-qt").map {|q| q.text}
    @rupaul_quotes
  end


end
