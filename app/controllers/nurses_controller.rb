class NursesController < ApplicationController
  before_action :set_nurse, only: [:show, :edit, :update, :destroy]

  swagger_controller :nurses, 'Nurses'

  # GET /nurses
  # GET /nurses.json
  def index
    @nurses = Nurse.all
  end

  swagger_api :index do
    summary 'Returns all nurses'
  end

  # GET /nurses/1
  # GET /nurses/1.json
  def show
  end

  swagger_api :show do
    summary "Fetches a nurse by id"
    param :path, :id, :integer, :required, "Nurse ID"
  end

  # GET /nurses/new
  def new
    @nurse = Nurse.new
  end

  # GET /nurses/1/edit
  def edit
  end

  # POST /nurses
  # POST /nurses.json
  def create
    @nurse = Nurse.new(nurse_params)

    respond_to do |format|
      if @nurse.save
        format.html { redirect_to @nurse, notice: 'Nurse was successfully created.' }
        format.json { render :show, status: :created, location: @nurse }
      else
        format.html { render :new }
        format.json { render json: @nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  swagger_api :create do
    summary "Create new nurse"

    param :body, :create, :Nurse, :required, ""
  end

  # PATCH/PUT /nurses/1
  # PATCH/PUT /nurses/1.json
  def update
    respond_to do |format|
      if @nurse.update(nurse_params)
        format.html { redirect_to @nurse, notice: 'Nurse was successfully updated.' }
        format.json { render :show, status: :ok, location: @nurse }
      else
        format.html { render :edit }
        format.json { render json: @nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nurses/1
  # DELETE /nurses/1.json
  def destroy
    @nurse.destroy
    respond_to do |format|
      format.html { redirect_to nurses_url, notice: 'Nurse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nurse
      @nurse = Nurse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nurse_params
      params.require(:nurse).permit(:name, :email, :password)
    end
end
