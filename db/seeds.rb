# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p01 = Phase.create number: 1, name: 'Fase #1'

p01e01 = p01.exercises.create name: 'Reposo'
p01e02 = p01.exercises.create name: 'Protuir con boca abierta'
p01e03 = p01.exercises.create name: 'Protuir con boca cerrada'
p01e04 = p01.exercises.create name: 'Retruir con boca abierta'
p01e05 = p01.exercises.create name: 'Retruir con boca cerrada'
p01e06 = p01.exercises.create name: 'Inflar cachetes'
p01e07 = p01.exercises.create name: 'Caramelo'
p01e08 = p01.exercises.create name: 'Morder labio superior'
p01e09 = p01.exercises.create name: 'Morder labio inferior'
p01e10 = p01.exercises.create name: 'Lateralizar'

p01e02.stages.create name: 'Inflar cachete derecho', description: 'Inflar el cachete derecho', video_link: 'https://www.youtube.com/embed/cYtGJGp-9hA', order: 1
p01e02.stages.create name: 'Inflar cachete izquierdo',  description: 'Inflar el cachete izquierdo', video_link: 'https://www.youtube.com/embed/gtwjIr6timY', order: 2






