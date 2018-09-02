class QuoteGuesser::CLI
  attr_accessor :author, :quote

  def call
    puts "Random Quote:"
    give_quote
    user_guess
  end

  def give_quote
    #scrapes https://www.brainyquote.com/authors/adam_neumann and https://www.brainyquote.com/authors/rupaul
    puts "I served in the Isreali Navy, and it's not an easy thing."
    @author = "Adam Neumann"
    @quote = QuoteGuesser::Quote.random
  end

  def user_guess
    puts "Is this a quote by RuPaul or Adam Neumann? Type '1' for Adam Neumann and type '2' for RuPaul."
    input = gets.strip
    if input == "1"
      puts "Correct!"
      puts "Would you like another quote? y/n"
      input = gets.strip
      if input == "y"
        call
      else
        nil
      end
    elsif input == "2"
      puts "Wrong!"
      puts "Would you like another quote? y/n"
      input = gets.strip
      if input == "y"
        call
      else
        nil
      end
    elsif input == "bio"
      read_bio
    else
      puts "Command not recognized."
    end
  end

  def read_bio
    puts "Here's a bio about the author:"
  end

end
