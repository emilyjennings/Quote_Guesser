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
