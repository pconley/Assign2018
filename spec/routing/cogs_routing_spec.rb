require "rails_helper"

RSpec.describe CogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cogs").to route_to("cogs#index")
    end

    it "routes to #new" do
      expect(:get => "/cogs/new").to route_to("cogs#new")
    end

    it "routes to #show" do
      expect(:get => "/cogs/1").to route_to("cogs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cogs/1/edit").to route_to("cogs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cogs").to route_to("cogs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cogs/1").to route_to("cogs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cogs/1").to route_to("cogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cogs/1").to route_to("cogs#destroy", :id => "1")
    end

  end
end
