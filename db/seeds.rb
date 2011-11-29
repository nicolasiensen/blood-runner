# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bank.create(
  :name => "Santa Casa", 
  :o_negative => rand * 100, 
  :o_positive => rand * 100, 
  :a_negative => rand * 100, 
  :b_negative => rand * 100, 
  :a_positive => rand * 100, 
  :b_positive => rand * 100, 
  :ab_negative => rand * 100, 
  :ab_positive => rand * 100)

Bank.create(
  :name => "HPS", 
  :o_negative => rand * 100, 
  :o_positive => rand * 100, 
  :a_negative => rand * 100, 
  :b_negative => rand * 100, 
  :a_positive => rand * 100, 
  :b_positive => rand * 100, 
  :ab_negative => rand * 100, 
  :ab_positive => rand * 100)

Bank.create(
  :name => "IAPI", 
  :o_negative => rand * 100, 
  :o_positive => rand * 100, 
  :a_negative => rand * 100, 
  :b_negative => rand * 100, 
  :a_positive => rand * 100, 
  :b_positive => rand * 100, 
  :ab_negative => rand * 100, 
  :ab_positive => rand * 100)

Bank.create(
  :name => "Tristeza", 
  :o_negative => rand * 100, 
  :o_positive => rand * 100, 
  :a_negative => rand * 100, 
  :b_negative => rand * 100, 
  :a_positive => rand * 100, 
  :b_positive => rand * 100, 
  :ab_negative => rand * 100, 
  :ab_positive => rand * 100)

Bank.create(
  :name => "Menino Deus", 
  :o_negative => rand * 100, 
  :o_positive => rand * 100, 
  :a_negative => rand * 100, 
  :b_negative => rand * 100, 
  :a_positive => rand * 100, 
  :b_positive => rand * 100, 
  :ab_negative => rand * 100, 
  :ab_positive => rand * 100)

Bank.create(
  :name => "Cristo Redentor", 
  :o_negative => rand * 100, 
  :o_positive => rand * 100, 
  :a_negative => rand * 100, 
  :b_negative => rand * 100, 
  :a_positive => rand * 100, 
  :b_positive => rand * 100, 
  :ab_negative => rand * 100, 
  :ab_positive => rand * 100)
