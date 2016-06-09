class Attraction < ActiveRecord::Base
  belongs_to :user
  # set_rgeo_factory_for_column(:coordinates, RGeo::Geographic.spherical_factory(:srid => 4326))

  # Temp disable for use on heroku
  # geocoded_by :address do |obj,results|
  #   if geo = results.first
  #     obj.coordinates = "POINT(#{geo.longitude} #{geo.latitude})"
  #     obj.latitude  = geo.latitude
  #     obj.longitude = geo.longitude
  #   end
  # end
  # after_validation :geocode

  enum type: {
    "Food": 0,
    "Lodging": 1,
    "Cultural/Historical": 2,
    "Adventure/Nature": 3,
    "Shopping": 4,
    "Relaxation": 5,
    "Entertainment/NightLife": 6,
    "Tour": 7,
    "Other": 8
  }

end
