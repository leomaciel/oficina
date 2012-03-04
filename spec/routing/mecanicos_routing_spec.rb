require "spec_helper"

describe MecanicosController do
  describe "routing" do

    it "routes to #index" do
      get("/mecanicos").should route_to("mecanicos#index")
    end

    it "routes to #new" do
      get("/mecanicos/new").should route_to("mecanicos#new")
    end

    it "routes to #show" do
      get("/mecanicos/1").should route_to("mecanicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mecanicos/1/edit").should route_to("mecanicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mecanicos").should route_to("mecanicos#create")
    end

    it "routes to #update" do
      put("/mecanicos/1").should route_to("mecanicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mecanicos/1").should route_to("mecanicos#destroy", :id => "1")
    end

  end
end
