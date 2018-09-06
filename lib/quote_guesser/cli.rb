class QuoteGuesser::CLI

  def initialize(given_quote)
    @given_quote = given_quote
    call
  end

  def call

    puts " "
    puts "-------------------------"
    puts "| Here's a Random Quote: |"
    puts "-------------------------"
    puts "'#{@given_quote.quote}'"
    puts " "

    puts "Is this a quote by RuPaul or Adam Neumann? Type 'a' for Adam Neumann and type 'r' for RuPaul."
    puts " "
    puts "If you'd like to first see a bio of the authors, type bio. Type any other key to exit"
    input = gets.strip
    puts " "

    if input == 'a' && @given_quote.author == "Adam Neumann" || input == 'r' && @given_quote.author == "Rupaul"
      puts " "
      puts "Correct!"
      puts " "
      another_quote
    elsif input == "bio"
      read_bio
    else
      nil
    end
  end

  def another_quote
    puts "Type 'q' for another quote."
    puts "Type any other key to exit."
    input = gets.strip
    if input == "q"
      initialize(QuoteGuesser::Quotes.random_quote)
    else
      nil
    end
  end

  def read_bio
    puts "Here are bios about the authors:"
    puts "RuPaul (born November 17, 1960) is an American drag queen, actor, model, singer, songwriter, television personality, and author. Since 2009, he has produced and hosted the reality competition series RuPaul's Drag Race, for which he received two Primetime Emmy Awards, in 2016 and 2017. RuPaul is considered to be the most commercially successful drag queen in the United States. In 2017, he was included in the annual Time 100 list of the most influential people in the world."
    puts "--"
    puts "Adam Neumann (born 1979) is an Israeli–American billionaire businessman. In 2010, he co-founded WeWork, along with Miguel McKelvey. He was born in Israel. He lived in Kibbutz Nir Am and served as an officer in the Israel Defense Forces."
    puts "--"
    puts "source: Wikipedia"
    puts "   "
    puts "Type 'start' to play again."
    input = gets.strip
    if input == 'start'
      call
    else
      nil
    end
  end

end
