# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todo_1 = Todo.create(id: 1, title: "wash dog", body: "dog", done: false)
todo_2 = Todo.create(id: 2, title: "wash car", body: "car", done: true)