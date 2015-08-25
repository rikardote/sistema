class CapturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_empleado
  before_action :set_capture, only: [:show, :edit, :update, :destroy]
  
  # GET /captures
  # GET /captures.json
  def index
    @captures = Capture.all
  end

  # GET /captures/1
  # GET /captures/1.json
  def show
  end

  # GET /captures/new
  def new
    @capture = Capture.new
  end

  # GET /captures/1/edit
  def edit

  end

  # POST /captures
  # POST /captures.json
  def create
    @capture = current_user.captures.new(capture_params)
    @capture.empleado = @empleado
   
    respond_to do |format|
      if @capture.save
        format.html { redirect_to @capture.empleado, notice: 'Capture was successfully created.' }
        format.json { render :show, status: :created, location: @capture.empleado }
      else
        format.html { render :new }
        format.json { render json: @capture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /captures/1
  # PATCH/PUT /captures/1.json
  def update
    respond_to do |format|
      if @capture.update(capture_params)
        format.html { redirect_to @capture.empleado, notice: 'Capture was successfully updated.' }
        format.json { render :show, status: :ok, location: @capture.empleado }
      else
        format.html { render :edit }
        format.json { render json: @capture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captures/1
  # DELETE /captures/1.json
  def destroy
    @capture.destroy
    respond_to do |format|
      format.html { redirect_to @empleado, notice: 'Capture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_empleado
      @empleado = Empleado.find(params[:empleado_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_capture
      @capture = Capture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capture_params
      params.require(:capture).permit(:empleado_id, :incident_id, :fecha_inicial, :fecha_final, :vacation_id, :user_id, :qna_id, :activate)
    end
end
