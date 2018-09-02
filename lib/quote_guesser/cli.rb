class QuoteGuesser::CLI
  attr_accessor :author, :quote

  def call
    puts "Random Quote:"
    give_quote
    user_guess
  end

  def give_quote
    #scrapes https://www.brainyquote.com/authors/adam_neumann and https://www.brainyquote.com/authors/rupaul
    @author = "Adam Neumann"
    @quote = QuoteGuesser::Quote.random
  end

  def user_guess
    puts "Is this a quote by RuPaul or Adam Neumann? Type '1' for Adam Neumann and type '2' for RuPaul. If you'd like to first see a bio of the authors, type bio."
    input = gets.strip
    if input.to_i == 1
      puts "Correct!"
      puts "Would you like another quote? y/n"
      input = gets.strip
      if input == "y"
        call
      else
        nil
      end
    elsif input.to_i == 2
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
      puts "Command not recognized. Please try again."
      call
    end
  end

  def read_bio
    puts "Here are bios about the authors:"
    puts "Type 'start' to play again."
    input = gets.strip
    if input == 'start'
      call
    else
      nil
    end
  end

end
