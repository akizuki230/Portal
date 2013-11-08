require "spec_helper"

describe ActasController do
  describe "routing" do

    it "routes to #index" do
      get("/actas").should route_to("actas#index")
    end

    it "routes to #new" do
      get("/actas/new").should route_to("actas#new")
    end

    it "routes to #show" do
      get("/actas/1").should route_to("actas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/actas/1/edit").should route_to("actas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/actas").should route_to("actas#create")
    end

    it "routes to #update" do
      put("/actas/1").should route_to("actas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/actas/1").should route_to("actas#destroy", :id => "1")
    end

  end
end
