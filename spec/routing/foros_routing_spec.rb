require "spec_helper"

describe ForosController do
  describe "routing" do

    it "routes to #index" do
      get("/foros").should route_to("foros#index")
    end

    it "routes to #new" do
      get("/foros/new").should route_to("foros#new")
    end

    it "routes to #show" do
      get("/foros/1").should route_to("foros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foros/1/edit").should route_to("foros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foros").should route_to("foros#create")
    end

    it "routes to #update" do
      put("/foros/1").should route_to("foros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foros/1").should route_to("foros#destroy", :id => "1")
    end

  end
end
