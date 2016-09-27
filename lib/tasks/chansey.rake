require 'csv'

namespace :chansey do
  desc "Load all sample data"
  task load_sample_data: :environment do
    Rake::Task['chansey:load_sample_nurses'].invoke
    Rake::Task['chansey:load_sample_patients'].invoke
    Rake::Task['chansey:load_sample_vital_records'].invoke
  end

  desc "Load sample data for nurses"
  task load_sample_nurses: :environment do
    file = 'sample/sample_nurses.csv'
    CSV.foreach(file, :headers => true) do |row|
      Nurse.create(
          :name => row['name'],
          :email => row['email'],
          :password => row['password']
      )
    end
  end

  desc "Load sample data for patients"
  task load_sample_patients: :environment do
    file = 'sample/sample_patients.csv'
    CSV.foreach(file, :headers => true) do |row|
      Patient.create(
          :name => row['name'],
          :dob => row['dob'],
          :gender => row['gender']
      )
    end
  end

  desc "Load sample data for vital records"
  task load_sample_vital_records: :environment do
    file = 'sample/sample_vital_records.csv'
    CSV.foreach(file, :headers => true) do |row|
      VitalRecord.create(
          :patient_id => row['patient_id'],
          :height => row['height'],
          :weight => row['weight'],
          :pulse => row['pulse'],
          :tempurature => row['temperature'],
          :bp_high => row['bp_high'],
          :bp_low => row['bp_low']
      )
    end
  end

end
