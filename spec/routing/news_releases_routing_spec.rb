require "rails_helper"

RSpec.describe NewsReleasesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/news_releases").to route_to("news_releases#index")
    end

    it "routes to #new" do
      expect(:get => "/news_releases/new").to route_to("news_releases#new")
    end

    it "routes to #show" do
      expect(:get => "/news_releases/1").to route_to("news_releases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/news_releases/1/edit").to route_to("news_releases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/news_releases").to route_to("news_releases#create")
    end

    it "routes to #update" do
      expect(:put => "/news_releases/1").to route_to("news_releases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/news_releases/1").to route_to("news_releases#destroy", :id => "1")
    end

  end
end
