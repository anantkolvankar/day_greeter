# DayGreeter

This gem allows you to greet your user with good morning, afternoon etc, based on the server timezone as a default setting.

If your users are going to be from different timezones you can use our javascript option so that they can have correct greeting based on their timezones.

## Installation

Add this line to your application's Gemfile:

    gem 'day_greeter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install day_greeter

## Usage
Use below code in your view to show greeting based on time
```
<%= DayGreeter.greet %>
```
If your user are going to be from different timezones you just have to set config as below:-
```
config.jsdaygreeter = true
```
Pass already existing element id to greet method were you want greeting to be appended.
```
<span id='greet'></span>
<%= DayGreeter.greet 'greet'%>
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
