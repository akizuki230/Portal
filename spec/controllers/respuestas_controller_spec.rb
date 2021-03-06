require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RespuestasController do

  # This should return the minimal set of attributes required to create a valid
  # Respuesta. As you add validations to Respuesta, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "respuesta" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RespuestasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all respuestas as @respuestas" do
      respuesta = Respuesta.create! valid_attributes
      get :index, {}, valid_session
      assigns(:respuestas).should eq([respuesta])
    end
  end

  describe "GET show" do
    it "assigns the requested respuesta as @respuesta" do
      respuesta = Respuesta.create! valid_attributes
      get :show, {:id => respuesta.to_param}, valid_session
      assigns(:respuesta).should eq(respuesta)
    end
  end

  describe "GET new" do
    it "assigns a new respuesta as @respuesta" do
      get :new, {}, valid_session
      assigns(:respuesta).should be_a_new(Respuesta)
    end
  end

  describe "GET edit" do
    it "assigns the requested respuesta as @respuesta" do
      respuesta = Respuesta.create! valid_attributes
      get :edit, {:id => respuesta.to_param}, valid_session
      assigns(:respuesta).should eq(respuesta)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Respuesta" do
        expect {
          post :create, {:respuesta => valid_attributes}, valid_session
        }.to change(Respuesta, :count).by(1)
      end

      it "assigns a newly created respuesta as @respuesta" do
        post :create, {:respuesta => valid_attributes}, valid_session
        assigns(:respuesta).should be_a(Respuesta)
        assigns(:respuesta).should be_persisted
      end

      it "redirects to the created respuesta" do
        post :create, {:respuesta => valid_attributes}, valid_session
        response.should redirect_to(Respuesta.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved respuesta as @respuesta" do
        # Trigger the behavior that occurs when invalid params are submitted
        Respuesta.any_instance.stub(:save).and_return(false)
        post :create, {:respuesta => { "respuesta" => "invalid value" }}, valid_session
        assigns(:respuesta).should be_a_new(Respuesta)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Respuesta.any_instance.stub(:save).and_return(false)
        post :create, {:respuesta => { "respuesta" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested respuesta" do
        respuesta = Respuesta.create! valid_attributes
        # Assuming there are no other respuestas in the database, this
        # specifies that the Respuesta created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Respuesta.any_instance.should_receive(:update).with({ "respuesta" => "MyText" })
        put :update, {:id => respuesta.to_param, :respuesta => { "respuesta" => "MyText" }}, valid_session
      end

      it "assigns the requested respuesta as @respuesta" do
        respuesta = Respuesta.create! valid_attributes
        put :update, {:id => respuesta.to_param, :respuesta => valid_attributes}, valid_session
        assigns(:respuesta).should eq(respuesta)
      end

      it "redirects to the respuesta" do
        respuesta = Respuesta.create! valid_attributes
        put :update, {:id => respuesta.to_param, :respuesta => valid_attributes}, valid_session
        response.should redirect_to(respuesta)
      end
    end

    describe "with invalid params" do
      it "assigns the respuesta as @respuesta" do
        respuesta = Respuesta.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Respuesta.any_instance.stub(:save).and_return(false)
        put :update, {:id => respuesta.to_param, :respuesta => { "respuesta" => "invalid value" }}, valid_session
        assigns(:respuesta).should eq(respuesta)
      end

      it "re-renders the 'edit' template" do
        respuesta = Respuesta.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Respuesta.any_instance.stub(:save).and_return(false)
        put :update, {:id => respuesta.to_param, :respuesta => { "respuesta" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested respuesta" do
      respuesta = Respuesta.create! valid_attributes
      expect {
        delete :destroy, {:id => respuesta.to_param}, valid_session
      }.to change(Respuesta, :count).by(-1)
    end

    it "redirects to the respuestas list" do
      respuesta = Respuesta.create! valid_attributes
      delete :destroy, {:id => respuesta.to_param}, valid_session
      response.should redirect_to(respuestas_url)
    end
  end

end
