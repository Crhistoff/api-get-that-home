# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start seeding..."

properties_data = [
  { name: '86872 Jacob Gateway', 
    operation_type: 'rental', 
    address: '86872 Jacob Gateway', 
    price: 3000.00, 
    property_type: 'Apartment',
    bedrooms: 4,
    bathrooms: 2,
    area: 180,
    pets: true,
    phone: '5983764478928',
    description: '3 Bedroom/2 Bathroom apartment available for ASAP move-in! Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.'
  },
  { name: 'Fransicsco de Paula Ugarriza 27', 
    operation_type: 'sale', 
    address: 'Fransicsco de Paula Ugarriza 27', 
    price: 25000.00, 
    property_type: 'House',
    bedrooms: 4,
    bathrooms: 2,
    area: 220,
    pets: true,
    phone: '5983764478928',
    description: '3 Bedroom/2 Bathroom apartment available for ASAP move-in! Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.'
  },
  { name: 'Fransicsco de Paula Ugarriza 27', 
    operation_type: 'sale', 
    address: 'Fransicsco de Paula Ugarriza 27', 
    price: 80000, 
    property_type: 'House',
    bedrooms: 2,
    bathrooms: 1,
    area: 150,
    pets: false,
    phone: '5983764478928',
    description: '3 Bedroom/2 Bathroom apartment available for ASAP move-in! Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.'
  },
  { name: 'Fransicsco de Paula Ugarriza 27', 
    operation_type: 'rent', 
    address: 'Fransicsco de Paula Ugarriza 27', 
    price: 250.00, 
    property_type: 'apartment',
    bedrooms: 2,
    bathrooms: 1,
    area: 100,
    pets: false,
    phone: '5983764478928',
    description: '3 Bedroom/2 Bathroom apartment available for ASAP move-in! Apartment features hardwood floors throughout, virtual doorman, Central AC/heat, dishwasher and a microwave. The kitchen has custom cabinetry and the living room is big enough to fit a dinner table, a couch and a tv set up.'
  },

]

properties_data.map { |property_data| Property.create(**property_data) }

puts "Seeding ended!"