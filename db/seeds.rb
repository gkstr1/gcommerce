<<<<<<<<< saved version
require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/sneakers.csv"), headers: true) do |row|
  Movie.find_or_create_by(title: row[0], release_year: row[1], price: row[2], description: row[3], color: row[4], size: row[5])
end
=========

>>>>>>>>> local version