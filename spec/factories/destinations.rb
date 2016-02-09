FactoryGirl.define do
  factory :destination do
    city Faker::Address.city
    state Faker::Address.state
    arrival_date "02/14/2016"
    departure_date "02/15/2016"
  end
end
