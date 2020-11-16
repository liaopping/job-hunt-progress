puts 'Start inserting seed "job_hunters" ...'
50.times do
  email = Faker::Internet.email
  JobHunter.create!(email: email, password: 'password', confirmed_at: Time.now)
end