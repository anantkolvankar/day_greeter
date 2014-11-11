# DayGreeter

This gem allows you to greet your user with good morning, afternoon etc, based on the server timezone.

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
##### Using JavaScript 
Require DayGreeter JS (day_greeter.js) in your application.js
```
//= require day_greeter
```
Pass already existing element id to greet method were you want greeting to be appended.
```
<span id='greet'></span>
<%= DayGreeter.greet 'greet'%>
```
## I18n
DayGreeter uses messages from I18n keys. To customize your app, you can set up your locale file(config/locales/en.yml):

```yaml
en:
  Morning_sunshine: "Morning Sunshine!"
  Good_morning: "Good morning"
  Good_afternoon: "Good afternoon"
  Good_evening: "Good evening"
  Go_to_bed: "Go to bed!"
  Hello_geeks!: "Hello geeks!"
```
