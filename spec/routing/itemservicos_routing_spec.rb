require "spec_helper"

describe ItemservicosController do
  describe "routing" do

    it "routes to #index" do
      get("/itemservicos").should route_to("itemservicos#index")
    end

    it "routes to #new" do
      get("/itemservicos/new").should route_to("itemservicos#new")
    end

    it "routes to #show" do
      get("/itemservicos/1").should route_to("itemservicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itemservicos/1/edit").should route_to("itemservicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itemservicos").should route_to("itemservicos#create")
    end

    it "routes to #update" do
      put("/itemservicos/1").should route_to("itemservicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itemservicos/1").should route_to("itemservicos#destroy", :id => "1")
    end

  end
end
