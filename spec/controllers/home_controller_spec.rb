require 'rails_helper'

describe 'HomeController', type: :controller do
  describe "routing" do

    it "routes to #index" do
      get("/").should route_to("home#index")
      get("/home").should route_to("home#index")
    end

  end
end