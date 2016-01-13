UrlShortener::Engine.routes.draw do
  match "/urls/create" => 'url_shortener#new', via: [:get, :post]
  match '/:id' => 'url_shortener#show',constraints: { id: /[A-Za-z0-9]{5}/ }, via: :get 
  match '/urls/preview' => 'url_shortener#preview', via: :get 
end