require 'test_helper'

module UrlShortener
  class UrlShortenerControllerTest < ActionController::TestCase
    test "should get new" do
      get :new
      assert_response :success
    end
  
  end
end
