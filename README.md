UrlShortener

## Synopsis
URL Shortener is an alpha engine/plugin gem , when setup and added to an application, it provides the views and services to generate short url and redirection from the generated short url


## Motivation

The motivation behind this gem was to learn to build a ruby engine/plugin

## Installation

* Add gem to Gemfile

```
gem 'url_shortener', :git => 'git://github.com/arvind-rama/url_shortener.git' 

bundle install

```
* Add URL shortener table to application database

```
rake shortener_engine:install:migrations
rake db:migrate
```

* Mount Engine to routes.rb

```
 mount UrlShortener::Engine => "/" ,  as: "shortener_engine"
```

## How to use

* Transform Long URL

http://[host:port||domain]/urls/create?url=[longurl]

This generates a short URL 

* Short URL

http://[host:port||domain]/[shortcode]


## License

This project rocks and uses MIT-LICENSE.
