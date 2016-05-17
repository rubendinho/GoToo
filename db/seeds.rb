# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
locations = Location.create([{
  city_name: 'Birmingham',
  state_province: 'AL',
  country: 'USA'
  },
  {
  city_name: 'Los Angeles',
  state_province: 'CA',
  country: 'USA'
  },
  {
  city_name: 'San Diego',
  state_province: 'CA',
  country: 'USA'
  },
  {
  city_name: 'St. Louis',
  state_province: 'MO',
  country: 'USA'
  },
  {
  city_name: 'Orlando',
  state_province: 'FL',
  country: 'USA'
  },
  ])