# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Product.create(:name => "Osprey Atmos 65 AG Pack", :description => "Descriptions:Awesome boots to hike.")
Product.create(:name => "Mountain Hardwear Hydra Pro Glove", :description => "100% Leather 4-way stretch nylon softshell fabric offers a snug, flexible fit Soft suede thumb patch for wiping wet noses Materials: Hydra Span 94% nylon, 6% other fibers; Palm: water-resistant goatskin leather Insulation: Thermal.Q Elite on back of hand only Weight: 6ozDescriptions:Awesome boots to hike.")
Product.create(:name => "black diamond glove", :description =>"glove that give you support to climb with balance.Descriptions:Awesome boots to hike.")
Product.create(:name => "Hiking tent", :description =>"Giving strong strength and support with build in strong wires.Descriptions:Awesome boots to hike.Awesome boots to hike."
