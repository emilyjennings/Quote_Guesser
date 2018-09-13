class QuoteGuesser::Scraper

  def self.scrape_authors
    authors = ["adam_neumann", "rupaul"]
    authors.each do |a|
      doc = Nokogiri::HTML(open("https://www.brainyquote.com/authors/#{a}"))
      doc.search("div.clearfix a.b-qt").map {|q| q.text}.each do |quote|
        QuoteGuesser::Quotes.new(quote).author = "#{a}"
      end
    end
  end

end
