UrlShortener

## Synopsis
URL Shortener is an alpha engine/plugin gem , when setup and added to an application, it provides the views and services to generate short url and redirection from short url


## Motivation

The motivation behind this gem was to learn to build a ruby engine/plugin

## Installation

* Add gem to application

```
gem 'url_shortener', :git => 'git://github.com/arvind-rama/url_shortener.git' 

```
* Add URL shortener table to application database

```
rake URLShortener:install:migrations
```

* Mount Engine

```
 mount UrlShortener::Engine => "/" ,  as: "shortener_engine"
```

## How to use

* Transformation 

http://[host:port||domain]/urls/create?url=https://www.google.com.my/maps/place/KL+City+Centre+Park/@3.1556466,101.7128026,17z/data=!3m1!4b1!4m2!3m1!1s0x31cc37d3dae66605:0xced2781fa7347a4e?hl=en

This generates a short URL 

* Short URL

http://[host:port||domain]/[shortcode]


## License

This project rocks and uses MIT-LICENSE.
