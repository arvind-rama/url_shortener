require 'uri'
module UrlShortener
  module Random 
    def self.generate_code(number)
     code = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
     Array.new(number) { code.sample }.join
    end
  end
  
  module Http
   def self.valid?(url)
    url =~ /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
   end
  end
end