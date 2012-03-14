# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Seeding Database with Data"

Sampletype.delete_all
open("/home/jeremiah/rails_projects/dataentry/db/seed_data/samplelist.noaa") do |samples|
  samples.read.each_line do |sample|
    id, name, descr = sample.chomp.split("~")
    Sampletype.create(:type_id => id, :type_name => name, :type_descr => descr)
  end
end

Habitattype.delete_all
open("/home/jeremiah/rails_projects/dataentry/db/seed_data/habitatlist.noaa") do |habitats|
  habitats.read.each_line do |habitat|
    id, name, descr = habitat.chomp.split("~")
    Habitattype.create(:habitat_type_id => id, :habitat_name => name, :habitat_descr => descr)
  end
end

Diver.delete_all
open("/home/jeremiah/rails_projects/dataentry/db/seed_data/diverlist.noaa") do |divers|
  divers.read.each_line do |diver|
    id, name, = diver.chomp.split("~")
    Diver.create(:diver_name_id => id, :diver_name => name)
  end
end

Animals.delete_all
open("/home/jeremiah/rails_projects/dataentry/db/seed_data/specieslist.noaa") do |animals|
  animals.read.each_line do |animal|
    code, name, max = diver.chomp.split("~")
    Diver.create(:spp_code => code, :common_name => name, :max_size => max)
  end
end



    
    

