# QuoteGuesser

1. Plan your gem, imagine interface
2. Start with the project structure
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8. program

A CLI that is a guessing game, using two different quote websites

The user gets a quote, and they have to guess whether the quote was by Adam Neumann or RuPaul

scrapes https://www.brainyquote.com/authors/adam_neumann and https://www.brainyquote.com/authors/rupaul

returns a random quote from one of the two websites

the user has to type "RuPaul" or "adam neumann" to guess who it is

returns true or false


blog:
I discovered my ruby version wasn't up to date so found these isntructions: http://codingpad.maryspad.com/2017/04/29/update-mac-os-x-to-the-current-version-of-ruby/


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

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/quote_guesser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the QuoteGuesser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/quote_guesser/blob/master/CODE_OF_CONDUCT.md).
