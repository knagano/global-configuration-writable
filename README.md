# Global::Configuration::Writable

Make global's configuration writable

global: https://rubygems.org/gems/global

## CAUTION

This gem is unholy.  You break global's referential transparency
that's so cute, pretty, precious and trustworthy.  You'll shoot your
foot.  I just warned.  Think twice.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'global-configuration-writable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install global-configuration-writable

## Usage

    pry> Global.some_config.some_entry
    => "some value"
    pry> Global.some_config.some_entry = "new value"
    NoMethodError: undefined method `some_entry=' for Global::Configuration

    pry> require 'global-configuration-writable'
    => true

    pry> Global.some_config.some_entry = "new value"
    => "new value"  # causes no error
    pry> Global.some_config.some_entry
    => "new value"

## Contributing

1. Fork it ( https://github.com/knagano/global-configuration-writable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
