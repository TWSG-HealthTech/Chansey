class VisitingSchedule < ActiveRecord::Base
  belongs_to :nurse
  belongs_to :patient

  def self.by_nurse_id_and_appointment_time(nurse_id = nil, appointment_time = nil)
    return where(nurse_id: nurse_id, appointment_time: get_full_day(appointment_time)) if nurse_id && appointment_time
    return where(nurse_id: nurse_id) if nurse_id && !appointment_time
    return where(appointment_time: get_full_day(appointment_time)) if !nurse_id && appointment_time
    all
  end

  private
    def self.get_full_day(date)
      date.to_datetime.beginning_of_day..date.to_datetime.end_of_day
    end
end
