#!/usr/bin/env ruby

class QuoteGuesser::Quotes
  attr_accessor :author, :quote
  @@all = []

  def initialize(quote)
    @quote = quote
    @author = author
  end

  def self.merge_quotes
    @@all << self.all_rupaul_quotes
    @@all << self.all_adam_quotes
    @@all
  end

  def self.all
    @@all
  end

  def self.random_quote
    @random_quote = self.merge_quotes.flatten.sample
    @random_quote
  end

  def self.all_rupaul_quotes
    @quotes_authors_rupaul = []
    QuoteGuesser::Scraper.scrape_rupaul.each do |quote|
      quote = self.new(quote)
      quote.author = "Rupaul"
      @quotes_authors_rupaul << quote
    end
    @quotes_authors_rupaul
  end

  def self.all_adam_quotes
    @quotes_authors_adam = []
    QuoteGuesser::Scraper.scrape_adam.each do |quote|
      quote = self.new(quote)
      quote.author = "Adam Neumann"
      @quotes_authors_adam << quote
    end
    @quotes_authors_adam
  end


end
