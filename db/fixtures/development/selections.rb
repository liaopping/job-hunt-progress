puts 'Start inserting seed "selections" ...'
50.times do |n|
  job_hunter_id = n+1
  company_id = n+1
  job_hunt_service_id = n+1
  Selection.create!(job_hunter_id: job_hunter_id, company_id: company_id, job_hunt_service_id: job_hunt_service_id)
end