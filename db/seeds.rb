# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


markets = Market.create([
	{address:	"1839 N Vine St, Hollywood, CA", 
		market_name: "Trader Joe's"},
	{address:	"1332 N Santa Monica, Los Angeles, CA",
		market_name: "Food 4 Less"},
	{address: "3434 W Beverley, Los Angeles, CA",
		market_name: "Albertson's"}])
