require "spec_helper"

describe ProyectosUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/proyectos_users").should route_to("proyectos_users#index")
    end

    it "routes to #new" do
      get("/proyectos_users/new").should route_to("proyectos_users#new")
    end

    it "routes to #show" do
      get("/proyectos_users/1").should route_to("proyectos_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/proyectos_users/1/edit").should route_to("proyectos_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/proyectos_users").should route_to("proyectos_users#create")
    end

    it "routes to #update" do
      put("/proyectos_users/1").should route_to("proyectos_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/proyectos_users/1").should route_to("proyectos_users#destroy", :id => "1")
    end

  end
end
