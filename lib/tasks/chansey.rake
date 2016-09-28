require 'csv'

namespace :chansey do
  desc "Load all sample data"
  task load_sample_data: :environment do
    Rake::Task['chansey:load_sample_nurses'].invoke
    Rake::Task['chansey:load_sample_patients'].invoke
    Rake::Task['chansey:load_sample_vital_records'].invoke
    Rake::Task['chansey:load_sample_visiting_schedules'].invoke
  end

  desc "Load sample data for nurses"
  task load_sample_nurses: :environment do
    file = 'sample/sample_nurses.csv'
    created = 0
    CSV.foreach(file, :headers => true) do |row|
      Nurse.create(
          :name => row['name'],
          :email => row['email'],
          :password => row['password']
      ).valid? ? created += 1 : created
    end
    puts "Loaded #{created} nurses"
  end

  desc "Load sample data for patients"
  task load_sample_patients: :environment do
    file = 'sample/sample_patients.csv'
    created = 0
    CSV.foreach(file, :headers => true) do |row|
      Patient.create(
          :name => row['name'],
          :dob => row['dob'],
          :gender => row['gender']
      ).valid? ? created += 1 : created
    end
    puts "Loaded #{created} patients"
  end

  desc "Load sample data for vital records"
  task load_sample_vital_records: :environment do
    file = 'sample/sample_vital_records.csv'
    created = 0
    CSV.foreach(file, :headers => true) do |row|
      VitalRecord.create(
          :patient_id => row['patient_id'],
          :height => row['height'],
          :weight => row['weight'],
          :pulse => row['pulse'],
          :temperature => row['temperature'],
          :bp_high => row['bp_high'],
          :bp_low => row['bp_low']
      ).valid? ? created += 1 : created
    end
    puts "Loaded #{created} vital records"
  end

  desc "Load sample data for visiting schedules"
  task load_sample_visiting_schedules: :environment do
    file = 'sample/sample_visiting_schedules.csv'
    created = 0
    CSV.foreach(file, :headers => true) do |row|
      VisitingSchedule.create(
          :nurse_id => row['nurse_id'],
          :patient_id => row['patient_id'],
          :appointment_time => row['appointment_time']
      ).valid? ? created += 1 : created
    end
    puts "Loaded #{created} visiting schedules"
  end

end
