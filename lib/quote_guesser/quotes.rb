#!/usr/bin/env ruby

class QuoteGuesser::Quotes
  attr_accessor :author, :quote
  @@all = []

  def initialize(quote)
    @quote = quote
    @author = author
    @@all << self
  end

  def self.random_quote
    @@all.sample
  end


end
