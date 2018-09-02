class QuoteGuesser::Quote
  attr_accessor :author, :content, :url
  def self.random
    #should return a random quote from one of the websites
    puts "'I served in the Isreali Navy, and it's not an easy thing.'"

    quote_1 = self.new
    quote_1.author = "Adam Neumann"
    quote_1.content = "I served in the Isreali Army"
    quote_1.url = "https://www.brainyquote.com/authors/adam_neumann"

    quote_2 = self.new
    quote_2.author = "RuPaul"
    quote_2.content = "We're all born naked and the rest is drag."
    quote_2.url = "https://www.brainyquote.com/authors/rupaul"

    [quote_1, quote_2]
  end
end
