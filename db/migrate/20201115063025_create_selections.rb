class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t|
      t.references :job_hunter, foreign_key: true
      t.references :company, foreign_key: true
      t.references :job_hunt_service, foreign_key: true
      t.date :date_of_attended_company_information_session
      t.date :date_of_got_a_scout
      t.date :date_of_applied
      t.date :date_of_first_casual_interview
      t.date :date_of_second_casual_interview
      t.date :date_of_first_interview
      t.date :date_of_second_interview
      t.date :date_of_third_interview
      t.date :date_of_fourth_interview
      t.date :date_of_fifth_interview
      t.date :date_of_got_a_job
      t.date :date_of_be_prayed
      t.date :date_of_prayed

      t.timestamps
    end
  end
end
