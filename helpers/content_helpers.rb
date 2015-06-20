# Calculate the years for a copyright
def copyright_years(start_year)
  end_year = Date.today.year
  if start_year == end_year
    start_year.to_s
  else
    start_year.to_s + '–' + end_year.to_s
  end
end

def current_year
  Time.now.year
end


# Faker helpers
def random_name
  Faker::Name.name
end

def random_address
  "#{Faker::Address.street_address},<br/>#{Faker::Address.city}, #{Faker::Address.state}<br/>#{Faker::Address.postcode}"
end

def random_company_name
  Faker::Company.name
end

def random_phone_number
  Faker::PhoneNumber.phone_number
end

def random_email_address
  Faker::Internet.email
end
