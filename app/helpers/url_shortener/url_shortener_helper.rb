require 'uri'

module UrlShortener
  module UrlShortenerHelper
    def is_preview_enabled(enabled)
     if !enabled.empty?  && enabled == "1"
      true
     else
      false
     end
    end
    
    def build_short_url(request,short_code)
      if Engine.mounted_path.spec.to_s.length > 0 && Engine.mounted_path.spec.to_s != "/" 
      request.base_url + Engine.mounted_path.spec.to_s + "/" + short_code
      else
      request.base_url  + "/" + short_code
      end  
    end
    
    def encode_url(url)
      URI.encode(url)
    end
    
  end
end
