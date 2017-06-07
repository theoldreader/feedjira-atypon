# feedjira-atypon
Atypon RSS format parser class for the [Feedjira Ruby Gem](http://feedjira.com/)

[![Build Status][travis-badge]][travis] [![Code Climate][code-climate-badge]][code-climate] [![Gem version][gem-version-badge]][gem-version]

[travis-badge]: https://travis-ci.org/theoldreader/feedjira-atypon.svg?branch=master
[travis]: https://travis-ci.org/theoldreader/feedjira-atypon
[code-climate-badge]: https://codeclimate.com/github/theoldreader/feedjira-atypon/badges/gpa.svg
[code-climate]: https://codeclimate.com/github/theoldreader/feedjira-atypon
[gem-version-badge]: https://badge.fury.io/rb/feedjira-atypon.svg
[gem-version]: https://badge.fury.io/rb/feedjira-atypon

## About the Atypon Format this Parser Handles
Atypon is a popular publishing software that many scientific journals use. The format of the RSS feed this generates is RDF with each and every element with a namespace prefix.

Example:
```xml
<rdf:RDF ...>
  <rss:channel ...>
    <rss:title ...></rss:title>
  </rss:channel>
  <rss:item ...>
    ...
  </rss:item>
  ...
</rdf:RDF>
```

## Installation
Add this line to your application's Gemfile:

    gem 'feedjira-atypon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install feedjira-atypon

## Configuration
You can configure `Feedjira` to use this parser in an initializer like so:
```ruby
Feedjira.configure do |config|
  config.parsers << Feedjira::Atypon
end
```
