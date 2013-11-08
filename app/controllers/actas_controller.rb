class ActasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_acta, only: [:show, :edit, :update, :destroy]

  # GET /actas
  # GET /actas.json
  def index
    @actas = Acta.all
  end

  # GET /actas/1
  # GET /actas/1.json
  def show
  end

  # GET /actas/new
  def new
    @acta = Acta.new
  end

  # GET /actas/1/edit
  def edit
  end

  # POST /actas
  # POST /actas.json
  def create
    @acta = Acta.new(acta_params)

    respond_to do |format|
      if @acta.save
        format.html { redirect_to @acta, notice: 'Acta was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acta }
      else
        format.html { render action: 'new' }
        format.json { render json: @acta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actas/1
  # PATCH/PUT /actas/1.json
  def update
    respond_to do |format|
      if @acta.update(acta_params)
        format.html { redirect_to @acta, notice: 'Acta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actas/1
  # DELETE /actas/1.json
  def destroy
    @acta.destroy
    respond_to do |format|
      format.html { redirect_to actas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acta
      @acta = Acta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acta_params
      params.require(:acta).permit(:fecha, :lugar, :tipo_reunion, :orden_dia, :desarrollo, :concluciones, :tareas, :user_id)
    end
end
