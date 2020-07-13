# Top10SoccerPlayers::Cli

Welcome to my CLI project! In this repository, there is a CLI that can show you a list of the current top 10 ranked best soccer players of all time, using data from a website; Sports Show. The link that is used for this source is: "https://sportsshow.net/greatest-soccer-players/". When you run this program, the program will ask you if you want to see this top 10 list that was scraped from the website. If you enter yes ('y') in the terminal, then you are given an option to type in one of the names of these top 10 players to see what country/countries they represented in international competitions. Once you type the given player's name, the command line will output to you the name of the country/countries that that specific player played for. And voilà, you get an interesting fact on the origins of some of the most iconic athletes in the most popular sport in the world! We learn something new everyday!

If you enter no ('n') in the terminal on the first interactive prompt, you will be exited from the command line. Any other response will output as "Invalid" and exit you from the command line. You will also get an output of "Invalid" in the second interactive prompt if you spell the soccer player's name wrong or you enter something that is not on the list, and be exited from the command line. So it's also a great learning experience to learn some complicated names!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'top10soccerplayers-cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install top10soccerplayers-cli

## Usage

In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the files that are in the folder, `lib`. To experiment with that code, run `bin/run` for an interactive prompt.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/run` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomasperez10/top10soccerplayers-cli/pulls. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Top10SoccerPlayers::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tomasperez10/top10soccerplayers-cli/blob/master/CODE_OF_CONDUCT.md).
