puts 'Start inserting seed "job_hunt_services" ...'
50.times do
  name = Faker::Company.name
  JobHuntService.create!(name: name)
end