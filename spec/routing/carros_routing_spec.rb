require "spec_helper"

describe CarrosController do
  describe "routing" do

    it "routes to #index" do
      get("/carros").should route_to("carros#index")
    end

    it "routes to #new" do
      get("/carros/new").should route_to("carros#new")
    end

    it "routes to #show" do
      get("/carros/1").should route_to("carros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/carros/1/edit").should route_to("carros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/carros").should route_to("carros#create")
    end

    it "routes to #update" do
      put("/carros/1").should route_to("carros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/carros/1").should route_to("carros#destroy", :id => "1")
    end

  end
end
