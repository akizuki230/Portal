class RespuestasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_respuesta, only: [:show, :edit, :update, :destroy]

  # GET /respuestas
  # GET /respuestas.json
  def index
    @respuestas = Respuesta.all
  end

  # GET /respuestas/1
  # GET /respuestas/1.json
  def show
  end

  # GET /respuestas/new
  def new
    @respuesta = Respuesta.new
  end

  # GET /respuestas/1/edit
  def edit
  end

  # POST /respuestas
  # POST /respuestas.json
  def create
    @respuesta = Respuesta.new(respuesta_params)

    respond_to do |format|
      if @respuesta.save
        format.html { redirect_to @respuesta, notice: 'Respuesta was successfully created.' }
        format.json { render action: 'show', status: :created, location: @respuesta }
      else
        format.html { render action: 'new' }
        format.json { render json: @respuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /respuestas/1
  # PATCH/PUT /respuestas/1.json
  def update
    respond_to do |format|
      if @respuesta.update(respuesta_params)
        format.html { redirect_to @respuesta, notice: 'Respuesta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @respuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respuestas/1
  # DELETE /respuestas/1.json
  def destroy
    @respuesta.destroy
    respond_to do |format|
      format.html { redirect_to respuestas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuesta
      @respuesta = Respuesta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respuesta_params
      params.require(:respuesta).permit(:respuesta, :user_id, :articulo_id)
    end
end
