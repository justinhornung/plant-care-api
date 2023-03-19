# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: "Justin", email: "justin@test.com", password: "password", image_url: "user_image1.jpg")
User.create!(name: "Nicole", email: "nicole@test.com", password: "password", image_url: "user_image2.jpg")

Plant.create!(name: "Aloe", description: "Aloe description", amount_of_sun: 6, days_to_water: 3)
Plant.create!(name: "Peace Lily", description: "Peace Lily description", amount_of_sun: 4, days_to_water: 4)
Plant.create!(name: "Snake Plant", description: "Snake Plant description", amount_of_sun: 5, days_to_water: 2)
Plant.create!(name: "Monstera", description: "Monstera description", amount_of_sun: 8, days_to_water: 3)

Schedule.create!(plant_id: 1, user_id: 1, image_url: "plant_image1.jpg", watering_start_date: "2023-11-03")
Schedule.create!(plant_id: 2, user_id: 1, image_url: "plant_image2.jpg", watering_start_date: "2023-11-03")
Schedule.create!(plant_id: 3, user_id: 1, image_url: "plant_image3.jpg", watering_start_date: "2023-11-03")
Schedule.create!(plant_id: 2, user_id: 2, image_url: "plant_image4.jpg", watering_start_date: "2023-11-03")
Schedule.create!(plant_id: 4, user_id: 2, image_url: "plant_image5.jpg", watering_start_date: "2023-11-03")
