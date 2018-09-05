#!/usr/bin/env ruby

class QuoteGuesser::Quotes
  attr_accessor :author, :quote, :scraper
  @@all = []

  def initialize(quote)
    @quote = quote
    @author = author
  end

  def self.merge_quotes
    @@all << self.all_adam_quotes
    @@all << self.all_rupaul_quotes
    @@all
  end

  def self.all
    @@all
  end

  def self.random_quote
    self.merge_quotes.flatten.sample
  end

  def self.all_rupaul_quotes
    quotes_authors_array = []
    QuoteGuesser::Scraper.scrape_rupaul.each do |quote|
      quote = self.new(quote)
      quote.author = "Rupaul"
      quotes_authors_array << quote
    end
    quotes_authors_array
  end

  def self.all_adam_quotes
    quotes_authors_array = []
    QuoteGuesser::Scraper.scrape_adam.each do |quote|
      quote = self.new(quote)
      quote.author = "Adam Neumann"
      quotes_authors_array << quote
    end
    quotes_authors_array
  end


end
