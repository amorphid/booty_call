Fabricator(:booty_address) do
  faker = Faker::Address

  street1    faker.street_address
  city       faker.city
  state      faker.state
  zip        faker.zip_code
end
