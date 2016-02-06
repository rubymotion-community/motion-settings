# motion-settings
[![Gem Version](https://badge.fury.io/rb/motion-settings.svg)](http://badge.fury.io/rb/motion-settings) 
[![Build Status](https://travis-ci.org/andrewhavens/motion-settings.svg?branch=master)](https://travis-ci.org/andrewhavens/motion-settings)

Easily store and retrieve your user's preferences and settings using `NSUserDefaults`.

Note that `NSUserDefaults` is not designed for secure data storage (passwords, tokens, etc). If you need to store data securely, use [`motion-keychain`](https://github.com/IconoclastLabs/motion-keychain).

## Installation

Add this line to your application's `Gemfile`:

    gem 'motion-settings', github: 'andrewhavens/motion-settings'

And then execute:

    $ bundle

## Usage

Store data:

```ruby
Settings.set :favorite_color, 'green'
```

Retrieve data:

```ruby
favorite_color = Settings.get :favorite_color
```

Remove an individual value:

```ruby
Settings.destroy :favorite_color
```
Remove ALL data:

```ruby
Settings.clear
```

Review [the spec](https://github.com/andrewhavens/motion-settings/blob/master/spec/main_spec.rb) for more usage examples.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
