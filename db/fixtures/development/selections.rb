puts 'Start inserting seed "selections" ...'
50.times do
  job_hunter_id = rand(1..10)
  company_id = rand(1..50)
  job_hunt_service_id = rand(1..5)
  Selection.create!(job_hunter_id: job_hunter_id, company_id: company_id, job_hunt_service_id: job_hunt_service_id)
end
