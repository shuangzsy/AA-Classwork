# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat_1 = Cat.new(birth_date: '2015/01/20', color: 'black', name: 'grinch', sex: 'M', description: 'I am a cat.')
cat_2 = Cat.new(birth_date: '2017/01/20', color: 'white', name: 'ophelia', sex: 'F', description: 'I am beautiful.')
cat_3 = Cat.new(birth_date: '2020/01/20', color: 'gray', name: 'levi', sex: 'M', description: 'I like Jeans.')
