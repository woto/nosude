# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'user@example.com', password: 'password')
new_collections_page = Ckpages::Page.create(title: 'Новое', path: '/new', content: '<div class="page-header"> <h1>Новые коллекции</h1> </div> <p>[[new_collections]]</p>')
popular_collections_page = Ckpages::Page.create(title: 'Популярное', path: '/', content: '<div class="page-header"> <h1>Популярные коллекции</h1> </div> <p>[[popular_collections]]</p>')
