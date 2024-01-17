# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

employee = Employee.create(
  first_name: 'Hira',
  middle_name: 'Gul',
  last_name: 'Shahid',
  personal_email: 'itshira696@gmail.com',
  city: 'Lahore',
  state: 'MP',
  country: 'Pakistan',
  pincode: '5432',
  address: 'Askari 11'
)