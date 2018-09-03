class QuoteGuesser::Author
  attr_accessor :author, :quote

  def initialize(quote)
    #plugs in the random quote, this class will tell the user who the author is
    #the input will always be "QuoteGuesser::Quote.random_quote" or the variable it's assigned to - given_quote
    @quote = quote
    @author = author

  end

  def rupaul_quote
  end

  def adam_quote
  end

end
