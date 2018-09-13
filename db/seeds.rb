# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Weapon.destroy_all
Armor.destroy_all
Consumable.destroy_all
Spell.destroy_all
Location.destroy_all
User.destroy_all
GameSession.destroy_all
Player.destroy_all


weapon_name = [["Glitter Bomb", "Explosive", 7], ["Pogostick", "Melee", 9], ["Weave", "Melee", 5], ["High Heel", "Range", 5], ["Tuck Tape", "Range", 8], ["Lip Sync", "Range", 6], ["Death Drop", "Explosive", 10], ["Make Over", "Melee", 7]]

armors = [['armor_1', 'armor_type_1'], ['armor_2', 'armor_type_1'], ['armor_3', 'armor_type_1'], ['armor_4', 'armor_type_2'], ['armor_5', 'armor_type_2'], ['armor_6', 'armor_type_3'], ['armor_7', 'armor_type_3'], ['armor_8', 'armor_type_1'], ['armor_9', 'armor_type_2']]

consumables = [['consumable_1', 'consumable_type_1'], ['consumable_2', 'consumable_type_1'], ['consumable_3', 'consumable_type_1'], ['consumable_4', 'consumable_type_2'], ['consumable_5', 'consumable_type_2'], ['consumable_6', 'consumable_type_3'], ['consumable_7', 'consumable_type_3'], ['consumable_8', 'consumable_type_1'], ['consumable_9', 'consumable_type_2']]

spells = [['spell_1', 'spell_type_1'], ['spell_2', 'spell_type_1'], ['spell_3', 'spell_type_1'], ['spell_4', 'spell_type_2'], ['spell_5', 'spell_type_2'], ['spell_6', 'spell_type_3'], ['spell_7', 'spell_type_3'], ['spell_8', 'spell_type_1'], ['spell_9', 'spell_type_2']]

weapon_name.each do |weapon|
  Weapon.create(name: weapon[0],
                weapon_type: weapon[1],
                attack: weapon[2])
end

armors.each_with_index do |armor, index|
  Armor.create(name: armor[0],
               armor_type: armor[1],
               defense: index)
end

consumables.each_with_index do |consumable, index|
  Consumable.create(name: consumable[0],
               consumable_type: consumable[1],
               power: index)
end

spells.each_with_index do |spell, index|
  Spell.create(name: Faker::RuPaul.quote,
               spell_type: spell[1],
               power: index)
end

1.times do
  User.create(email: Faker::Internet.unique.free_email,
               password: 'password')
end

5.times do
  Location.create(name: 'Location',
                  image: 'text_img.jpg')
end


10.times do |i|
  Player.create(name: Faker::RuPaul.unique.queen,health: 100,stamina: 100,shade: 100,strength: Random.rand(2..10),endurance: Random.rand(2..10),constitution: Random.rand(2..10),intelligence: Random.rand(2..10),level: 1,exp: 0,sprite: "characters/character_#{i + 1}")
end

GameSession.create(user_id: 1,
                   player_id: 1,
                   location_id: 1)
