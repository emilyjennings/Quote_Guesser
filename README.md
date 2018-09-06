# QuoteGuesser

Project Requirements
Provide a CLI
Your CLI application must provide access to data from a web page.
The data provided must go at least one level deep. A "level" is where a user can make a choice and then get detailed information about their choice. Some examples are below:
Movies opening soon - Enter your zip code and receive a list of movies and their details.
Libraries near you - Enter your zip code and receive a list of libraries and their details.
Programming meetups near you - Choose from an events list and receive details.
News reader - List articles and read an article of your choosing.
Your CLI application should not be too similiar to the Ruby final projects (Music Library CLI, Tic-Tac-Toe with AI, Student Scraper). Also, please refrain from using Kickstarter as that was used for the scraping 'code along'.
Use good OO design patterns. You should be creating a collection of objects, not hashes, to store your data. Pro Tip: Avoid scraping data more than once per web page - utilize objects you have already created. It will speed up your program!

How this will work:

user types quote-guesser

The user gets a random quote

They have to guess whether the quote was by typing Adam Neumann or RuPaul

scrapes https://www.brainyquote.com/authors/adam_neumann and https://www.brainyquote.com/authors/rupaul

returns a random quote from one of the two websites

the user has to enter "RuPaul" or "Adam Neumann" to guess who it is

returns correct or incorrect


Blog post:
QuoteGuesser: My CLI Ruby Project

I finally came to the end of the Ruby section of my learning on Learn.co and I was overwhelmed when reading the description of the final project for it, thinking that I didn’t understand enouhg to truly set up and create an executable product. For anyone out there reading this facing similar imposter syndrome: you will be able to do this! I spent a day reading all the material about it and then dove right in to watching the walkthrough video by Avi. That cleared so much of it up, and I watched it again, pausing probably every minute, to set up my project structure just the way he did.

I actually ran into a few roadblocks along the way there - including not being able to run my console using ./bin/console. But through some google searches I found that all I had to do was update my Ruby version. I found these instructions: http://codingpad.maryspad.com/2017/04/29/update-mac-os-x-to-the-current-version-of-ruby/

As for the actual project: I didn’t want to create a simple CLI program that displays movie times or something. I wanted to make something fun. I used to be a teacher in South Korea, and I love to design silly games for my students to practice English while being challenged with something out of the ordinary. I also feel very inspired by both Adam Neumann, CEO of WeWork, and by RuPaul. So, I chose to scrape a quotes website (BrainyQuotes) and then have a random quote returned that the user has to guess which of these famous people said it. They’re both such interesting and surprising people, you actually might not be able to guess right away each time! I certainly had fun playing it myself, since I don’t know all the quotes from each of them. I would imagine someone could go to the BrainyQuotes website and find the same landing page for another famous person and change which page it scrapes, tailoring it for their own uses (again, picturing it to be used in a classroom.)

Realized some things about classes and object collaboration: start with the object you want to be able to instantiate. If you have an object you create and then scrape, have it be object_name = object.new(url).scrape. Like writing an essay, it’s best to start with the end result - you want to scrape an object. I had trouble wrapping my head around this at first. The argument for instantiation can be a url to be scraped - in my case, a url either from rupaul or adam neumann. So, each object that’s supposed to be scraped has its own class. I started by having a scraper class and a class for all quotes, and the quotes need to be scraped. Since they have to be in a big list together eventually (so that a random one can be picked from a global array), the Quotes was the object that was scraped. At one time I had RuPaul and Adam quotes as separate classes, but that just didn’t seem to make sense.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quote_guesser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quote_guesser

## Usage

Use this as a fun guessing game for students in a classroom for motivational quotes, or for employees of wework to enjoy the thoughts of our CEO.

Run this game by running `./bin/quote-guesser`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/emilyjennings/quote_guesser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the QuoteGuesser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/quote_guesser/blob/master/CODE_OF_CONDUCT.md).
