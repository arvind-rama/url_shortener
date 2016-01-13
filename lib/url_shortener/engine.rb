module UrlShortener
  class Engine < ::Rails::Engine
    isolate_namespace UrlShortener
    engine_name "shortener_engine"
    
      def self.mounted_path
    route = Rails.application.routes.routes.detect do |route|
      route.app == self
    end
    route && route.path
  end
  end
end
