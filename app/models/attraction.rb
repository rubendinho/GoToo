class Attraction < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  enum type: {
    "Food": 0,
    "Lodging": 1, 
    "Culture": 2,
    "Adventure": 3,
    "Shopping": 4,
    "Relaxation": 5,
    "Entertainment": 6,
    "Other": 7
  }

end
