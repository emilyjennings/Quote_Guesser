#!/usr/bin/env ruby

class QuoteGuesser::Author
  attr_accessor :author, :quote
  @@all = [] #all the quotes (the text) and the authors with them

  def initialize(quote)
    @quote = quote
    @author = author

  end

  def self.rupaul_quote
    #takes the array out of Quote for Rupauls' quotes and assigns all of them this author by iterating through, assigning the author, and adding to the class array.
    QuoteGuesser::Quote.scrape_rupaul.map do |quote|
      quote_object = self.new(quote)
      quote_object.author = "RuPaul"
      @@all << quote_object
    end

  end

  def self.adam_quote
    QuoteGuesser::Quote.scrape_rupaul.map do |quote|
      quote_object = self.new(quote)
      quote_object.author = "RuPaul"
      @@all << quote_object
    end
  end

  def self.all
    @@all
  end

end
