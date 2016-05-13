class Attraction < ActiveRecord::Base
  # set_rgeo_factory_for_column(:coordinates, RGeo::Geographic.spherical_factory(:srid => 4326))
  geocoded_by :address do |obj,results|
    if geo = results.first
      obj.coordinates = "POINT(#{geo.longitude} #{geo.latitude})"
      obj.latitude  = geo.latitude
      obj.longitude = geo.longitude
    end
  end
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
