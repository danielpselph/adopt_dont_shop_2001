# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.destroy_all

shelter1 = Shelter.create(name: "Poncho's Pointy Pets",
                            address: "555 Indiana Ave",
                            city: "Mexico City",
                            state: "Mexico City",
                            zip: "01049")
    
shelter2 = Shelter.create(name: "Reptiles R Us",
                            address: "7566 Soda Springs Dr",
                            city: "Clearwater Beach",
                            state: "Florida",
                            zip: "33767")
                            
shelter3 = Shelter.create(name: "Avian Friends Rescue",
                            address: "9214 Luigia Lane",
                            city: "San Diego",
                            state: "California",
                            zip: "92109")
