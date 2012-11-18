# SourceLocator

The real benefit of using open source libraries is that we get to see the code.
But how often do we read code? Whenever we need help, we go to google and
read results from Stackoverflow or some blogs. Some of might open up
the library's documentation and read it.

SourceLocator encourages you to lookup source code more often by taking you to
method definitions easily.

It is a command line tool as of now. I hope to add plugins for popular text
editors very soon.

## Installation

Add this line to your application's Gemfile:

    gem 'source_locator'

And then execute:

    $ bundle

## Usage

Once the gem installed a "showme" command will be available.

In your Rails app's ROOT directory try

    showme pluralize

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
