# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Book.create!([
#     {title: "The Great Gatsby"},
#     {title: "To Kill a Mockingbird"},
#     {title: "1984"},
#     {title: "Pride and Prejudice"},
#     {title: "The Catcher in the Rye"}
# ])

# ...existing code...

if Rails.env.development?
  puts "Seeding development database..."
  Book.create!([
    {title: "The Great Gatsby"},
    {title: "To Kill a Mockingbird"},
    {title: "1984"},
    {title: "Pride and Prejudice"},
    {title: "The Catcher in the Rye"}
  ])
elsif Rails.env.test?
  puts "Seeding test database..."
  Book.create!([
    {title: "Test Book 1"},
    {title: "Test Book 2"},
    {title: "Test Book 3"}
  ])
elsif Rails.env.production?
  puts "Seeding production database..."
  Book.create!([
    {title: "Production Book 1"},
    {title: "Production Book 2"},
    {title: "Production Book 3"}
  ])
  # Production seeds here
end
