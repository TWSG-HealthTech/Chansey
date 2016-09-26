class Nurse < ActiveRecord::Base
  has_many :visiting_schedules
  has_many :patients, :through => :visiting_schedules
end
