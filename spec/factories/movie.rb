FactoryBot.define do
  factory :movie do
    title { Faker::Movie.title }
    imdb_id { SecureRandom.hex(10) }
  end
end
