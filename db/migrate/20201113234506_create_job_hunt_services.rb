class CreateJobHuntServices < ActiveRecord::Migration[5.2]
  def change
    create_table :job_hunt_services do |t|
      t.string :name

      t.timestamps
    end
  end
end
