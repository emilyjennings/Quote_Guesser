#!/usr/bin/env ruby

class QuoteGuesser::Quotes
  attr_accessor :author, :quote, :scraper
  @@all = []

  def self.merge_quotes
    @@all << QuoteGuesser::Scraper.all_adam_quotes
    @@all << QuoteGuesser::Scraper.all_rupaul_quotes
    @@all
  end

  def self.random_quote
    self.merge_quotes.flatten.sample
  end


end
