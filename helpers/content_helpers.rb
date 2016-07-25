# Calculate the years for a copyright
def copyright_years(start_year)
  end_year = Date.today.year
  if start_year == end_year
    start_year.to_s
  else
    start_year.to_s + '–' + end_year.to_s
  end
end

# Current Year
def current_year
  Time.now.year
end
