Rails.application.routes.draw do

  mount UrlShortener::Engine => "/" ,  as: "shortener_engine"
end
