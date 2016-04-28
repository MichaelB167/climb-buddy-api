# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gym.transaction do
  CSV.foreach(Rails.root + 'data/gyms.csv',
              headers: true) do |gym_row|
    gym = gym_row.to_hash
    next if Gym.exists? gym
    Gym.create!(gym)
  end
end

Climb.transaction do
  CSV.foreach(Rails.root + 'data/climbs.csv',
              headers: true) do |climb_row|
    climb = climb_row.to_hash
    next if Climb.exists? climb
    Climb.create!(climb)
  end
end
