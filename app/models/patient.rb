class Patient < ActiveRecord::Base
  has_many :visiting_schedules
  has_many :nurses, :through => :visiting_schedules
end
