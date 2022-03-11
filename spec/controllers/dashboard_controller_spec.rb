require 'rails_helper'

describe 'DashboardController', type: :controller do
  describe "routing" do

    it "routes to #index" do
      get("/dashboard").should route_to("dashboard#index")
    end

  end
end