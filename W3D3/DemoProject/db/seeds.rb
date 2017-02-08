# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ranch_house = House.create(address: "Ranch House")
beach_house = House.create(address: "Beach House")

alicia = Person.create(name: "Alicia", house_id: beach_house)
anna = Person.create(name: "Anna", house_id: beach_house)
stephanie = Person.create(name: "Stephanie", house_id: beach_house)
jesse = Person.create(name: "Jesse", house_id: ranch_house)
zach = Person.create(name: "Zach", house_id: ranch_house)
sresht = Person.create(name: "Sresht", house_id: ranch_house)
