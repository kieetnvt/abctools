# Abctools

Collection of utilites for working with String class in Ruby.
Such as in this version:

- get right email
- remove vietnamese accented character to get pretty string with non-accented character

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'abctools'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install abctools

## Usage

```ruby
# Remove accented character
Abctools.insensitive_remove_accent("Hồ Chí Minh")
=> "ho chi minh"

# Remove accented character
Abctools.sensitive_remove_accent("Hồ Chí Minh")
=> "Ho Chi Minh"

# Get right email
Abctools.right_email("     AwesomeRuby@abc.COM     ")
=> "awesomeruby@abc.com"

# Check right email
Abctools.right_email("     AwesomeRuby@noDot     ")
=> false
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/abctools/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
