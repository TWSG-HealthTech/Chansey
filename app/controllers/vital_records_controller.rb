class VitalRecordsController < ApplicationController
  before_action :set_vital_record, only: [:show, :edit, :update, :destroy]

  # GET /vital_records
  # GET /vital_records.json
  def index
    @vital_records = VitalRecord.all
  end

  # GET /vital_records/1
  # GET /vital_records/1.json
  def show
  end

  # GET /vital_records/new
  def new
    @vital_record = VitalRecord.new
  end

  # GET /vital_records/1/edit
  def edit
  end

  # POST /vital_records
  # POST /vital_records.json
  def create
    @vital_record = VitalRecord.new(vital_record_params)

    respond_to do |format|
      if @vital_record.save
        format.html { redirect_to @vital_record, notice: 'Vital record was successfully created.' }
        format.json { render :show, status: :created, location: @vital_record }
      else
        format.html { render :new }
        format.json { render json: @vital_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vital_records/1
  # PATCH/PUT /vital_records/1.json
  def update
    respond_to do |format|
      if @vital_record.update(vital_record_params)
        format.html { redirect_to @vital_record, notice: 'Vital record was successfully updated.' }
        format.json { render :show, status: :ok, location: @vital_record }
      else
        format.html { render :edit }
        format.json { render json: @vital_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vital_records/1
  # DELETE /vital_records/1.json
  def destroy
    @vital_record.destroy
    respond_to do |format|
      format.html { redirect_to vital_records_url, notice: 'Vital record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vital_record
      @vital_record = VitalRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vital_record_params
      params.require(:vital_record).permit(:height, :weidht, :pulse, :tempurature, :bp_high, :bp_low, :patient_id)
    end
end
