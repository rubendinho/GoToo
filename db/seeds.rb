Attraction.delete_all
Location.delete_all

Location.create!([
  {city_name: "Dallas", state_province: "TX", country: 1, description: "This city right here!"},
  {city_name: "London", state_province: "England", country: 248, description: "Our former countrymen"},
  {city_name: "Miami", state_province: "FL", country: 1, description: "A city in Southern Florida. "},
  {city_name: "Birmingham", state_province: "AL", country: 1, description: nil},
  {city_name: "Los Angeles", state_province: "CA", country: 1, description: nil},
  {city_name: "San Diego", state_province: "CA", country: 1, description: nil},
  {city_name: "St. Louis", state_province: "MO", country: 1, description: nil},
  {city_name: "Orlando", state_province: "FL", country: 1, description: nil},
  {city_name: "Yerevan", state_province: "Yerevan", country: 12, description: ""},
  {city_name: 'Hanoi', state_province: '', country: 'Vietnam' },
  {city_name: 'Tokyo', state_province: '', country: 'Japan'},
])


Attraction.create!([
  {name: "Dealey Plaza", type_of: 2, address: "Dealey Plaza, Dallas, TX, United States", latitude: "32.778818", longitude: "-96.808299", description: "The place that Dallas is most \"known\" for", user_id: 1 },
  {name: "Eiffel Tower", type_of: 2, address: "Eiffel Tower, Paris, France", latitude: "48.85837", longitude: "2.294481", description: "The big radio tower in the middle of Paris", user_id: 1 },
  {name: "Parent's House", type_of: 1, address: "4113 Pineridge Dr., Garland, TX", latitude: "32.915222", longitude: "-96.694894", description: "Where I grew up. Just using this as a test to make sure the user_id column is properly filled in.", user_id: 1 },
  {name: "Jeremy's House", type_of: 0, address: "102 Beechwood Pl., Lewisville, TX, USA", latitude: "33.043749", longitude: "-97.029711", description: "This is the house where much of this application was written.", user_id: 1},
  {name: "Great Ocean Road", type_of: 3, address: "Great Ocean Road, Melbourne, Australia", description: nil, user_id: 1 },
  {name: "Tennis Center", type_of: 2, address: "Tennis Center, Melbourne, Australia", description: nil, user_id: 1 },
  {name: "Great Barrier Reef", type_of: 3, address: "Great Barrier Reef, Cairns, Australia", description: nil, user_id: 1 },
  {name: "Sydney Opera House", type_of: 2, address: "Sydney Opera House, Sydney, Australia", description: nil, user_id: 1 },
  {name: "Hillside Brau", type_of: 0, address: "Hillside Brau, Salzburn, Austria", description: nil, user_id: 1 },
  {name: "Angkor Wat", type_of: 2, address: "Angkor Wat, Siem Reap, Cambodia", description: nil, user_id: 1 },
  {name: "Pub Street", type_of: 6, address: "Pub Street, Siem Reap, Cambodia", description: nil, user_id: 1 },
  {name: "The Wallace Gallery", type_of: 2, address: "The Wallace Gallery, London, England", description: nil, user_id: 1 },
  {name: "Borough Market", type_of: 0, address: "Borough Market, London, England", description: nil, user_id: 1 },
  {name: "Tate Modern", type_of: 2, address: "Tate Modern, London, England", description: nil, user_id: 1 },
  {name: "Westminster Abbey", type_of: 2, address: "Westminster Abbey, London, England", description: nil, user_id: 1 },
  {name: "Rudas Baths", type_of: 5, address: "Rudas Baths, Budapest, Hungary", description: nil, user_id: 1 },
  {name: "Robot Cabaret", type_of: 6, address: "Robot Cabaret, Tokyo, Japan", description: nil, user_id: 1 },
  {name: "Tsukiji Fish Market", type_of: 6, address: "Tsukiji Fish Market, Tokyo, Japan", description: nil, user_id: 1 },
  {name: "Meiji Shrine", type_of: 2, address: "Meiji Shrine, Tokyo, Japan", description: nil, user_id: 1 },
  {name: "Park Hyatt Bar", type_of: 6, address: "Park Hyatt Bar, Tokyo, Japan", description: nil, user_id: 1 },
  {name: "Yamazaki Distillery", type_of: 0, address: "Yamazaki Distillery, Kyoto, Japan", description: nil, user_id: 1 },
  {name: "Hotel Shilla", type_of: 1, address: "Hotel Shilla, Seoul, South Korea", description: nil, user_id: 1 },
  {name: "Ghandi House", type_of: 2, address: "Ghandi House, Mumbai, India", description: nil, user_id: 1 },
  {name: "Pagodas", type_of: 2, address: "Pagodas, Bagan, Myanmar", description: nil, user_id: 1 },
  {name: "Star Beam", type_of: 2, address: "Star Beam, Bagan, Myanmar", description: nil, user_id: 1 },
  {name: "Eyeful Restaurant", type_of: 0, address: "Eyeful Restaurant, Inle Lake, Myanmar", description: nil, user_id: 1 },
  {name: "De Rokery", type_of: 6, address: "De Rokery, Amsterdam, Netherlands", description: nil, user_id: 1 },
  {name: "Besseggen", type_of: 3, address: "Besseggen, Besseggen, Norway", description: nil, user_id: 1 },
  {name: "Trolltunga", type_of: 3, address: "Trolltunga, Trolltunga, Norway", description: nil, user_id: 1 },
  {name: "Plaza de Armas", type_of: 2, address: "Plaza de Armas, Cusco, Peru", description: nil, user_id: 1 },
  {name: "Alpaca Expeditions", type_of: 7, address: "Alpaca Expeditions, Machu Picchu, Peru", description: nil, user_id: 1 },
  {name: "Marina Bay Sands", type_of: 6, address: "Marina Bay Sands, Singapore, Singapore", description: nil, user_id: 1 },
  {name: "Chinatown Open Food Plaza", type_of: 0, address: "Chinatown Open Food Plaza, Singapore, Singapore", description: nil, user_id: 1 },
  {name: "Bike Around", type_of: 3, address: "Bike Around, Singapore, Singapore", description: nil, user_id: 1 },
  {name: "Las Ramblas", type_of: 0, address: "Las Ramblas, Barcelona, Spain", description: nil, user_id: 1 },
  {name: "Mount Pilatus", type_of: 3, address: "Mount Pilatus, Zurich, Switzerland", description: nil, user_id: 1 },
  {name: "Hang Gliding Interlaken", type_of: 3, address: "Hang Gliding Interlaken, Interlaken, Switzerland", description: nil, user_id: 1 },
  {name: "Tamsui along the coast", type_of: 3, address: "Tamsui along the coast, Taipei, Taiwan", description: nil, user_id: 1 },
  {name: "Ximin Night Market", type_of: 0, address: "Ximin Night Market, Taipei, Taiwan", description: nil, user_id: 1 },
  {name: "Beitou Hot Springs", type_of: 5, address: "Beitou Hot Springs, Taipei, Taiwan", description: nil, user_id: 1 },
  {name: "Taipei 101", type_of: 4, address: "Taipei 101, Taipei, Taiwan", description: nil, user_id: 1 },
  {name: "Coco van Bike", type_of: 3, address: "Coco van Bike, Bangkok, Thailand", description: nil, user_id: 1 },
  {name: "Rajas Fashion", type_of: 4, address: "Rajas Fashion, Bangkok, Thailand", description: nil, user_id: 1 },
  {name: "Somboon Siam Square One", type_of: 0, address: "Somboon Siam Square One, Putamwan, Bangkok, Thailand", description: nil, user_id: 1 },
  {name: "Gondola Serenade", type_of: 2, address: "Gondola Serenade, Venice, Italy", description: nil, user_id: 1 },
  {name: "Exotic Food Tour", type_of: 0, address: "Exotic Food Tour, Hanoi, Vietnam", description: nil, user_id: 1 },
  {name: "Old Quarter Bia Hoi", type_of: 0, address: "Old Quarter Bia Hoi, Hanoi, Vietnam", description: nil, user_id: 1 },
  {name: "Indochina Sails Cruise", type_of: 3, address: "Inodchina Sails Cruise, Hanoi, Vietnam", description: nil, user_id: 1 }
])
