require "spec_helper"

describe RespuestasController do
  describe "routing" do

    it "routes to #index" do
      get("/respuestas").should route_to("respuestas#index")
    end

    it "routes to #new" do
      get("/respuestas/new").should route_to("respuestas#new")
    end

    it "routes to #show" do
      get("/respuestas/1").should route_to("respuestas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/respuestas/1/edit").should route_to("respuestas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/respuestas").should route_to("respuestas#create")
    end

    it "routes to #update" do
      put("/respuestas/1").should route_to("respuestas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/respuestas/1").should route_to("respuestas#destroy", :id => "1")
    end

  end
end
