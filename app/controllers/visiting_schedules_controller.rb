class VisitingSchedulesController < ApplicationController
  before_action :set_visiting_schedule, only: [:show, :edit, :update, :destroy]

  # GET /visiting_schedules
  # GET /visiting_schedules.json
  def index
    @visiting_schedules = VisitingSchedule.all
  end

  # GET /visiting_schedules/1
  # GET /visiting_schedules/1.json
  def show
  end

  # GET /visiting_schedules/new
  def new
    @visiting_schedule = VisitingSchedule.new
  end

  # GET /visiting_schedules/1/edit
  def edit
  end

  # POST /visiting_schedules
  # POST /visiting_schedules.json
  def create
    @visiting_schedule = VisitingSchedule.new(visiting_schedule_params)

    respond_to do |format|
      if @visiting_schedule.save
        format.html { redirect_to @visiting_schedule, notice: 'Visiting schedule was successfully created.' }
        format.json { render :show, status: :created, location: @visiting_schedule }
      else
        format.html { render :new }
        format.json { render json: @visiting_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visiting_schedules/1
  # PATCH/PUT /visiting_schedules/1.json
  def update
    respond_to do |format|
      if @visiting_schedule.update(visiting_schedule_params)
        format.html { redirect_to @visiting_schedule, notice: 'Visiting schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @visiting_schedule }
      else
        format.html { render :edit }
        format.json { render json: @visiting_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visiting_schedules/1
  # DELETE /visiting_schedules/1.json
  def destroy
    @visiting_schedule.destroy
    respond_to do |format|
      format.html { redirect_to visiting_schedules_url, notice: 'Visiting schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visiting_schedule
      @visiting_schedule = VisitingSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visiting_schedule_params
      params.require(:visiting_schedule).permit(:appointment_time, :nurse_id, :patient_id)
    end
end
