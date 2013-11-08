class ProyectosUsersController < ApplicationController
  before_action :set_proyectos_user, only: [:show, :edit, :update, :destroy]

  # GET /proyectos_users
  # GET /proyectos_users.json
  def index
    @proyectos_users = ProyectosUser.all
  end

  # GET /proyectos_users/1
  # GET /proyectos_users/1.json
  def show
  end

  # GET /proyectos_users/new
  def new
    @proyectos_user = ProyectosUser.new
  end

  # GET /proyectos_users/1/edit
  def edit
  end

  # POST /proyectos_users
  # POST /proyectos_users.json
  def create
    @proyectos_user = ProyectosUser.new(proyectos_user_params)

    respond_to do |format|
      if @proyectos_user.save
        format.html { redirect_to @proyectos_user, notice: 'Proyectos user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proyectos_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @proyectos_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyectos_users/1
  # PATCH/PUT /proyectos_users/1.json
  def update
    respond_to do |format|
      if @proyectos_user.update(proyectos_user_params)
        format.html { redirect_to @proyectos_user, notice: 'Proyectos user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proyectos_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos_users/1
  # DELETE /proyectos_users/1.json
  def destroy
    @proyectos_user.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyectos_user
      @proyectos_user = ProyectosUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyectos_user_params
      params.require(:proyectos_user).permit(:user_id, :proyecto_id)
    end
end
