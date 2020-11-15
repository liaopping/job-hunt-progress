puts 'Start inserting seed "companies" ...'
50.times do
  name = Faker::Company.name
  Company.create!(name: name)
end