# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Product.create(:name => "Osprey Atmos 65 AG Pack", :description => " The foundation of the Osprey Atmos AG™ 65 is Osprey’s Anti-Gravity™ suspension system that delivers outstanding ventilation and carrying comfort. This award winning pack has earned a solid reputation with savvy thru-hikers on the Pacific Crest Trail. ", :image_url => "https://www.ospreypacks.com/images/product/series/features/Aura_S15_Detail_StowOnTheGo-min.jpg", :colour => "Greenish Blue ", :price => "$346.00 ")
Product.create(:name => "Mountain Hardwear Hydra Pro Glove ", :description => " Fabric Body: 4-Way Stretch Nylon Softshell Body Fabric Content: 92% nylon, 8% elastane Insulation: Thermal.Q™ 120g Fabric Palm: Water-resistant Goatskin Leather Fabric Laminate: OutDry® Waterproof Technology", :image_url => "http://s7d5.scene7.com/is/image/ColumbiaSportswear2/OM5422_010_f ", :coloor => " greyish black", :price => "$64.98 ")
Product.create(:name => "Vasque Skywalk GTX ", :description => "DBack by popular demand! Don’t let the retro styling of the original fool you, this is an incredibly capable, surprisingly nimble and award-winning trail traveler and most likely your new favorite boot.", :image_url => "http://a1.zassets.com/images/z/3/3/8/7/4/9/3387499-p-MULTIVIEW.jpg", :colour => "olive brown ", :price => " $199.99")
