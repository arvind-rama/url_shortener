module UrlShortener
  class UrlShortener < ActiveRecord::Base
    self.primary_key = 'url_short'
    attr_accessible :url, :url_short
  end
end
