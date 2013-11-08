require "spec_helper"

describe ProyectosUsuariosController do
  describe "routing" do

    it "routes to #index" do
      get("/proyectos_usuarios").should route_to("proyectos_usuarios#index")
    end

    it "routes to #new" do
      get("/proyectos_usuarios/new").should route_to("proyectos_usuarios#new")
    end

    it "routes to #show" do
      get("/proyectos_usuarios/1").should route_to("proyectos_usuarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/proyectos_usuarios/1/edit").should route_to("proyectos_usuarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/proyectos_usuarios").should route_to("proyectos_usuarios#create")
    end

    it "routes to #update" do
      put("/proyectos_usuarios/1").should route_to("proyectos_usuarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/proyectos_usuarios/1").should route_to("proyectos_usuarios#destroy", :id => "1")
    end

  end
end
