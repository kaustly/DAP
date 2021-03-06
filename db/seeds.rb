# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.destroy_all
Work.destroy_all

user1 = User.create(email: "user1@example.com", password: "11234567", password_confirmation: "11234567")
user2 = User.create(email: "user2@example.com", password: "12234567", password_confirmation: "12234567")
user3 = User.create(email: "user3@example.com", password: "12334567", password_confirmation: "12334567")

work1 = Work.create(public: true, media_type: "http://www.moma.org/explore/inside_out/inside_out/wp-content/uploads/2012/04/FGT_Manhattan_sized-643x428.jpg", title: "Untitled", artist: "Felix Gonzalez-Torres", year: 1991, user: user1, info: "description")
work2 = Work.create(public: true, media_type: "http://media-cache-ak0.pinimg.com/736x/da/3c/da/da3cda5830f2f075151754aa7b7751a2.jpg", title: "Untitled (Toronto)", artist: "Felix Gonzalez-Torres", year: 1992, user: user2, info: "description")
work3 = Work.create(public: true, media_type: "http://erhard-metz.de/wp-content/uploads/L1007253-600.jpg", title: "Untitled (USA Today)", artist: "Felix Gonzalez-Torres", year: 1990, user: user3, info: "description")
