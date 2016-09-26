class VisitingSchedule < ActiveRecord::Base
  belongs_to :nurse
  belongs_to :patient
end
