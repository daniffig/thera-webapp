# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p01 = Phase.create number: 1, name: 'Fase #1'

p01e01 = p01.exercises.create name: 'Inflar cachetes'

p01e01.stages.create name: 'Inflar cachete derecho', description: 'Inflar el cachete derecho', video_link: 'https://www.youtube.com/embed/cYtGJGp-9hA', order: 1
p01e01.stages.create name: 'Inflar cachete izquierdo',  description: 'Inflar el cachete izquierdo', video_link: 'https://www.youtube.com/embed/gtwjIr6timY', order: 2






