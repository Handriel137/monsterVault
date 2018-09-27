# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating Monsters..."
Monster.create(name: 'Adult Red Dragon', size: 'Huge', race: 'Dragon', alignment: 'LE', hit_points: '150', hit_dice: '12d12')
Monster.create(name: 'Aboleth', size: 'Large', race: 'Aberration', alignment: 'CE', hit_points: '100', hit_dice: '10d12')
Monster.create(name: 'Goblin', size: 'small', race: 'Goblinoid', alignment: 'CE', hit_points: '4', hit_dice: '2d4')
Monster.create(name: 'Umber Hulk', size: 'Large', race: 'Beast', alignment: 'CN', hit_points: '120', hit_dice: '10d12')

puts "creating SpecialAbility..."
SpecialAbility.create(name: 'Breath Weapon', description: 'The Dragon exhales fire.', attack_bonus: '14', damage_dice: '10d8')
SpecialAbility.create(name: 'Scuttle', description: 'The goblin moves 5ft after a missed attack.', attack_bonus: '0', damage_dice: '0')
SpecialAbility.create(name: 'Telepathy', description: 'The Aboleth can speak without words within 30ft.', attack_bonus: '0', damage_dice: '0')
SpecialAbility.create(name: 'Wing Buffet', description: 'Its not all you can eat.', attack_bonus: '10', damage_dice: '0')

monster = Monster.find_by(name: "Adult Red Dragon")
monster.special_ability << SpecialAbility.find_by(id:1)
monster.special_ability << SpecialAbility.find_by(id:4)