class QuoteGuesser::CLI
  attr_accessor :author, :quote

  def call
    puts "Random Quote:"
    give_quote
    user_guess
  end

  def give_quote
    @quote = QuoteGuesser::Quote.random
  end

  #somewhere in the if statements below that determine if an answer is correct,
  #the answer will be compared by iteration over the arrays in the QuoteGuesser::Quote.scrape_adam (and rupaul) methods
  #and if they match, the author is returned, so I need the match_author file to determine whether the given random quote matches one of those arrays
  #and returns true or false so we can use it below

  def user_guess
    puts "Is this a quote by RuPaul or Adam Neumann? Type '1' for Adam Neumann and type '2' for RuPaul. If you'd like to first see a bio of the authors, type bio."
    input = gets.strip

    if input.to_i == 1 && Quote.find_author == "Adam Neumann"
      puts "Correct!"
      another_quote
    elsif input.to_i == 2 && Quote.find_author == "RuPaul"
      puts "Correct!"
      another_quote
    elsif input == "bio"
      read_bio
    else
      puts "Incorrect!"
      another_quote
    end
  end

  def another_quote
    puts "Would you like another quote? y/n"
    input = gets.strip
    if input == "y"
      call
    else
      nil
    end
  end



  #   if input.to_i == 1
  #     puts "Correct!"
  #     puts "Would you like another quote? y/n"
  #     input = gets.strip
  #     if input == "y"
  #       call
  #     else
  #       nil
  #     end
  #   elsif input.to_i == 2
  #     puts "Wrong!"
  #     puts "Would you like another quote? y/n"
  #     input = gets.strip
  #     if input == "y"
  #       call
  #     else
  #       nil
  #     end
  #   elsif input == "bio"
  #     read_bio
  #   else
  #     puts "Command not recognized. Please try again."
  #     call
  #   end
  # end

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
