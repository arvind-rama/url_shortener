require_dependency "url_shortener/application_controller"
require 'uri'
require "url_shortener/utilities"


module UrlShortener
  class UrlShortenerController < ApplicationController
    
    wrap_parameters UrlShortener
    
    def new
      render_404 and return if params[:url].blank? || !Http::valid?(params[:url])
           @urlshortener = UrlShortener.where(:url => params[:url]).first         
           if @urlshortener.blank?     
              @urlshortener = UrlShortener.new
              @urlshortener.url = params[:url]              
              begin
                code = Random::generate_code(5)
                @urlshortener.url_short = code
              end until UrlShortener.where(:url_short => code).first.blank? 
              @urlshortener.save                                         
           end
       respond_to do |format|
          format.html
          format.xml { render xml: @urlshortener }
          format.json { render json: @urlshortener }
       end
    end
    
    def show
      @urlshortener = UrlShortener.where(:url_short => params[:id]).first  
      render_404 and return if @urlshortener.blank?
       if cookies.signed[:preview] == "true"
        respond_to do |format|
          format.html
          format.xml { render xml: @urlshortener }
          format.json { render json: @urlshortener }
        end
       else
         if @urlshortener.url =~ /^(http|https):/
         redirect_to URI.encode(@urlshortener.url)
         else
          redirect_to "http://"+ URI.encode(@urlshortener.url)
         end 
       end
      
    end
    
    def preview
      render_404 and return if params[:enabled].blank?
      if params[:enabled] == "1"
        cookies.permanent.signed[:preview]   = "true"
      else
        cookies.permanent.signed[:preview]   = "false"  
      end
      @enabled = params[:enabled]
    end

 end
end
