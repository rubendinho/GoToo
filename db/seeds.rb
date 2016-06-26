User.create!([
  {first_name: nil, last_name: nil, username: nil, hometown: nil, citizenship: nil, gender: nil, age: nil, email: "bob@example.com", encrypted_password: "$2a$10$sSNeR6AXjlXhwJaSNxsqYOyaF0k2umhzi.Sf7M5li1h71CY0amyC.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-05-08 18:33:52", last_sign_in_at: "2016-05-08 18:33:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "UkR6pcUgLUXtMLzfyyRx", confirmed_at: "2016-05-08 18:34:23", confirmation_sent_at: "2016-05-08 18:33:51", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil},
  {first_name: "Chloe", last_name: "Thedog", username: "Chloe_bo", hometown: "Houston, TX", citizenship: 1, gender: 2, age: 5, email: "chloe@bing.com", encrypted_password: "$2a$10$mQt1KjQg/dtVBxsA6iM4CuN7X0HFJSKn3CSofHH6QASwRNfqNFrN6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-05-09 03:56:35", last_sign_in_at: "2016-05-08 20:06:40", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "yEz5JjevfoVTnQ2WZjnT", confirmed_at: nil, confirmation_sent_at: "2016-05-08 20:06:40", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil},
  {first_name: "Jeremy", last_name: "Gunter", username: "gunterja", hometown: "Dallas, TX", citizenship: 1, gender: 5, age: 31, email: "jeremy@example.com", encrypted_password: "$2a$10$IRxtZtRAtjbcxrhkelKqG.VtInZsuZKPLhPDr/.us6ApuZJ3qf0gW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2016-05-13 02:45:43", last_sign_in_at: "2016-05-09 04:05:33", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "gxHQFPzGXSxyNWsEvip9", confirmed_at: "2016-04-26 22:38:42", confirmation_sent_at: "2016-04-22 01:51:49", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil},
  {first_name: "Dave", last_name: "Fan", username: "fanimal", hometown: "New York City, NY", citizenship: 1, gender: 1, age: nil, email: "dave@example.com", encrypted_password: "$2a$10$Nnx2f/BBKAJ2dI9B4YMBR.fjU0uvTOzqBdhVTSfUjdaHTWQ955rjK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-06-06 22:05:25", last_sign_in_at: "2016-06-06 22:05:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "8FYd_pKf9vJD4yS8v9xo", confirmed_at: nil, confirmation_sent_at: "2016-06-06 22:05:24", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil}
])
Attraction.create!([
  {name: "Dealey Plaza", type_of: 2, address: "Dealey Plaza, Dallas, TX, United States", latitude: "32.778818", longitude: "-96.808299", description: "The place that Dallas is most \"known\" for", user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba3ec4d8 "POINT (-96.8082993 32.7788184)">},
  {name: "Eiffel Tower", type_of: 2, address: "Eiffel Tower, Paris, France", latitude: "48.85837", longitude: "2.294481", description: "The big radio tower in the middle of Paris", user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba15d3c0 "POINT (2.2944813 48.85837009999999)">},
  {name: "Parent's House", type_of: 4, address: "4113 Pineridge Dr., Garland, TX", latitude: "32.915222", longitude: "-96.694894", description: "Where I grew up. Just using this as a test to make sure the user_id column is properly filled in.", user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba15c100 "POINT (-96.69489399999999 32.915222)">},
  {name: "Jeremy's House", type_of: 0, address: "102 Beechwood Pl., Lewisville, TX, USA", latitude: "33.043749", longitude: "-97.029711", description: "This is the house where much of this application was written.", user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba3f1280 "POINT (-97.02971099999999 33.043749)">},
  {name: "Great Ocean Road", type_of: 3, address: "Great Ocean Road, Melbourne, Australia", latitude: "-37.814107", longitude: "144.96328", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba3f045c "POINT (144.96328 -37.814107)">},
  {name: "Tennis Center", type_of: 2, address: "Tennis Center, Melbourne, Australia", latitude: "-37.882167", longitude: "145.080605", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba3f5e20 "POINT (145.0806055 -37.8821669)">},
  {name: "Great Barrier Reef", type_of: 3, address: "Great Barrier Reef, Cairns, Australia", latitude: "-16.920334", longitude: "145.77086", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba3f4ffc "POINT (145.7708595 -16.9203338)">},
  {name: "Sydney Opera House", type_of: 2, address: "Sydney Opera House, Sydney, Australia", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Hillside Brau", type_of: 0, address: "Hillside Brau, Salzburn, Austria", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Angkor Wat", type_of: 2, address: "Angkor Wat, Siem Reap, Cambodia", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Pub Street", type_of: 6, address: "Pub Street, Siem Reap, Cambodia", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "The Wallace Gallery", type_of: 2, address: "The Wallace Gallery, London, England", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Borough Market", type_of: 0, address: "Borough Market, London, England", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Tate Modern", type_of: 2, address: "Tate Modern, London, England", latitude: "51.507721", longitude: "-0.099194", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba3f8b98 "POINT (-0.0991941 51.507721)">},
  {name: "Westminster Abbey", type_of: 2, address: "Westminster Abbey, London, England", latitude: "51.499417", longitude: "-0.127571", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b41c08 "POINT (-0.1275705 51.4994174)">},
  {name: "Rudas Baths", type_of: 5, address: "Rudas Baths, Budapest, Hungary", latitude: "47.497912", longitude: "19.040235", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b40484 "POINT (19.040235 47.497912)">},
  {name: "Robot Cabaret", type_of: 6, address: "Robot Cabaret, Tokyo, Japan", latitude: "35.709026", longitude: "139.731992", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb801414 "POINT (139.7319925 35.7090259)">},
  {name: "Tsukiji Fish Market", type_of: 6, address: "Tsukiji Fish Market, Tokyo, Japan", latitude: "35.709026", longitude: "139.731992", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb8005f0 "POINT (139.7319925 35.7090259)">},
  {name: "Meiji Shrine", type_of: 2, address: "Meiji Shrine, Tokyo, Japan", latitude: "35.709026", longitude: "139.731992", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b3d658 "POINT (139.7319925 35.7090259)">},
  {name: "Park Hyatt Bar", type_of: 6, address: "Park Hyatt Bar, Tokyo, Japan", latitude: "35.709026", longitude: "139.731992", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b3c064 "POINT (139.7319925 35.7090259)">},
  {name: "Yamazaki Distillery", type_of: 0, address: "Yamazaki Distillery, Kyoto, Japan", latitude: "35.011636", longitude: "135.768029", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb8051e0 "POINT (135.7680294 35.0116363)">},
  {name: "Hotel Shilla", type_of: 4, address: "Hotel Shilla, Seoul, South Korea", latitude: "37.566535", longitude: "126.977969", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb8043bc "POINT (126.9779692 37.566535)">},
  {name: "Ghandi House", type_of: 2, address: "Ghandi House, Mumbai, India", latitude: "19.033126", longitude: "72.842447", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b38950 "POINT (72.8424472 19.0331257)">},
  {name: "Pagodas", type_of: 2, address: "Pagodas, Bagan, Myanmar", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Star Beam", type_of: 2, address: "Star Beam, Bagan, Myanmar", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Eyeful Restaurant", type_of: 0, address: "Eyeful Restaurant, Inle Lake, Myanmar", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "De Rokery", type_of: 6, address: "De Rokery, Amsterdam, Netherlands", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Besseggen", type_of: 3, address: "Besseggen, Besseggen, Norway", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Trolltunga", type_of: 3, address: "Trolltunga, Trolltunga, Norway", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Plaza de Armas", type_of: 2, address: "Plaza de Armas, Cusco, Peru", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Alpaca Expeditions", type_of: 7, address: "Alpaca Expeditions, Machu Picchu, Peru", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Marina Bay Sands", type_of: 6, address: "Marina Bay Sands, Singapore, Singapore", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Chinatown Open Food Plaza", type_of: 0, address: "Chinatown Open Food Plaza, Singapore, Singapore", latitude: "1.355379", longitude: "103.867744", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb80cc60 "POINT (103.8677444 1.3553794)">},
  {name: "Bike Around", type_of: 3, address: "Bike Around, Singapore, Singapore", latitude: "1.355379", longitude: "103.867744", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b35d40 "POINT (103.8677444 1.3553794)">},
  {name: "Las Ramblas", type_of: 0, address: "Las Ramblas, Barcelona, Spain", latitude: "41.380758", longitude: "2.173767", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b344a4 "POINT (2.1737673 41.3807575)">},
  {name: "Mount Pilatus", type_of: 3, address: "Mount Pilatus, Zurich, Switzerland", latitude: "47.372685", longitude: "8.568385", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b94fb370 "POINT (8.5683847 47.3726846)">},
  {name: "Hang Gliding Interlaken", type_of: 3, address: "Hang Gliding Interlaken, Interlaken, Switzerland", latitude: "46.686348", longitude: "7.863205", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b94fa54c "POINT (7.863204899999999 46.6863481)">},
  {name: "Tamsui along the coast", type_of: 3, address: "Tamsui along the coast, Taipei, Taiwan", latitude: "25.032969", longitude: "121.565418", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b313bc "POINT (121.5654177 25.0329694)">},
  {name: "Ximin Night Market", type_of: 0, address: "Ximin Night Market, Taipei, Taiwan", latitude: "25.032969", longitude: "121.565418", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b30250 "POINT (121.5654177 25.0329694)">},
  {name: "Beitou Hot Springs", type_of: 5, address: "Beitou Hot Springs, Taipei, Taiwan", latitude: "25.136605", longitude: "121.507157", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb81124c "POINT (121.5071573 25.1366052)">},
  {name: "Taipei 101", type_of: 4, address: "Taipei 101, Taipei, Taiwan", latitude: "25.182417", longitude: "121.466962", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb810428 "POINT (121.4669617 25.1824172)">},
  {name: "Coco van Bike", type_of: 3, address: "Coco van Bike, Bangkok, Thailand", latitude: "13.756331", longitude: "100.501765", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b2cb64 "POINT (100.5017651 13.7563309)">},
  {name: "Rajas Fashion", type_of: 4, address: "Rajas Fashion, Bangkok, Thailand", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Somboon Siam Square One", type_of: 0, address: "Somboon Siam Square One, Putamwan, Bangkok, Thailand", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Gondola Serenade", type_of: 2, address: "Gondola Serenade, Venice, Italy", latitude: nil, longitude: nil, description: nil, user_id: 4, coordinates: nil},
  {name: "Exotic Food Tour", type_of: 0, address: "Exotic Food Tour, Hanoi, Vietnam", latitude: "21.027764", longitude: "105.83416", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b29f90 "POINT (105.8341598 21.0277644)">},
  {name: "Old Quarter Bia Hoi", type_of: 0, address: "Old Quarter Bia Hoi, Hanoi, Vietnam", latitude: "21.027764", longitude: "105.83416", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b8b28398 "POINT (105.8341598 21.0277644)">},
  {name: "Indochina Sails Cruise", type_of: 3, address: "Inodchina Sails Cruise, Hanoi, Vietnam", latitude: "21.027764", longitude: "105.83416", description: nil, user_id: 4, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4b94ff358 "POINT (105.8341598 21.0277644)">}
])
Country.create!([
  {name: "USA"},
  {name: "Afghanistan"},
  {name: "Albania"},
  {name: "Algeria"},
  {name: "American Samoa"},
  {name: "Andorra"},
  {name: "Angola"},
  {name: "Anguilla"},
  {name: "Antarctica"},
  {name: "Antigua and Barbuda"},
  {name: "Argentina"},
  {name: "Armenia"},
  {name: "Aruba"},
  {name: "Australia"},
  {name: "Austria"},
  {name: "Azerbaijan"},
  {name: "Bahamas"},
  {name: "Bahrain"},
  {name: "Bangladesh"},
  {name: "Barbados"},
  {name: "Belarus"},
  {name: "Belgium"},
  {name: "Belize"},
  {name: "Benin"},
  {name: "Bermuda"},
  {name: "Bhutan"},
  {name: "Bolivia"},
  {name: "Bosnia and Herzegovina"},
  {name: "Botswana"},
  {name: "Bouvet Island"},
  {name: "Brazil"},
  {name: "British Antarctic Territory"},
  {name: "British Indian Ocean Territory"},
  {name: "British Virgin Islands"},
  {name: "Brunei"},
  {name: "Bulgaria"},
  {name: "Burkina Faso"},
  {name: "Burundi"},
  {name: "Cambodia"},
  {name: "Cameroon"},
  {name: "Canada"},
  {name: "Canton and Enderbury Islands"},
  {name: "Cape Verde"},
  {name: "Cayman Islands"},
  {name: "Central African Republic"},
  {name: "Chad"},
  {name: "Chile"},
  {name: "China"},
  {name: "Christmas Island"},
  {name: "Cocos [Keeling] Islands"},
  {name: "Colombia"},
  {name: "Comoros"},
  {name: "Congo - Brazzaville"},
  {name: "Congo - Kinshasa"},
  {name: "Cook Islands"},
  {name: "Costa Rica"},
  {name: "Croatia"},
  {name: "Cuba"},
  {name: "Cyprus"},
  {name: "Czech Republic"},
  {name: "Côte d’Ivoire"},
  {name: "Denmark"},
  {name: "Djibouti"},
  {name: "Dominica"},
  {name: "Dominican Republic"},
  {name: "Dronning Maud Land"},
  {name: "Ecuador"},
  {name: "Egypt"},
  {name: "El Salvador"},
  {name: "Equatorial Guinea"},
  {name: "Eritrea"},
  {name: "Estonia"},
  {name: "Ethiopia"},
  {name: "Falkland Islands"},
  {name: "Faroe Islands"},
  {name: "Fiji"},
  {name: "Finland"},
  {name: "France"},
  {name: "French Guiana"},
  {name: "French Polynesia"},
  {name: "French Southern Territories"},
  {name: "French Southern and Antarctic Territories"},
  {name: "Gabon"},
  {name: "Gambia"},
  {name: "Georgia"},
  {name: "Germany"},
  {name: "Ghana"},
  {name: "Gibraltar"},
  {name: "Greece"},
  {name: "Greenland"},
  {name: "Grenada"},
  {name: "Guadeloupe"},
  {name: "Guam"},
  {name: "Guatemala"},
  {name: "Guernsey"},
  {name: "Guinea"},
  {name: "Guinea-Bissau"},
  {name: "Guyana"},
  {name: "Haiti"},
  {name: "Heard Island and McDonald Islands"},
  {name: "Honduras"},
  {name: "Hong Kong"},
  {name: "Hungary"},
  {name: "Iceland"},
  {name: "India"},
  {name: "Indonesia"},
  {name: "Iran"},
  {name: "Iraq"},
  {name: "Ireland"},
  {name: "Isle of Man"},
  {name: "Israel"},
  {name: "Italy"},
  {name: "Jamaica"},
  {name: "Japan"},
  {name: "Jersey"},
  {name: "Johnston Island"},
  {name: "Jordan"},
  {name: "Kazakhstan"},
  {name: "Kenya"},
  {name: "Kiribati"},
  {name: "Kuwait"},
  {name: "Kyrgyzstan"},
  {name: "Laos"},
  {name: "Latvia"},
  {name: "Lebanon"},
  {name: "Lesotho"},
  {name: "Liberia"},
  {name: "Libya"},
  {name: "Liechtenstein"},
  {name: "Lithuania"},
  {name: "Luxembourg"},
  {name: "Macau SAR China"},
  {name: "Macedonia"},
  {name: "Madagascar"},
  {name: "Malawi"},
  {name: "Malaysia"},
  {name: "Maldives"},
  {name: "Mali"},
  {name: "Malta"},
  {name: "Marshall Islands"},
  {name: "Martinique"},
  {name: "Mauritania"},
  {name: "Mauritius"},
  {name: "Mayotte"},
  {name: "Mexico"},
  {name: "Micronesia"},
  {name: "Midway Islands"},
  {name: "Moldova"},
  {name: "Monaco"},
  {name: "Mongolia"},
  {name: "Montenegro"},
  {name: "Montserrat"},
  {name: "Morocco"},
  {name: "Mozambique"},
  {name: "Myanmar [Burma]"},
  {name: "Namibia"},
  {name: "Nauru"},
  {name: "Nepal"},
  {name: "Netherlands"},
  {name: "Neutral Zone"},
  {name: "New Caledonia"},
  {name: "New Zealand"},
  {name: "Nicaragua"},
  {name: "Niger"},
  {name: "Nigeria"},
  {name: "Niue"},
  {name: "Norfolk Island"},
  {name: "North Korea"},
  {name: "North Vietnam"},
  {name: "Northern Mariana Islands"},
  {name: "Norway"},
  {name: "Oman"},
  {name: "Pacific Islands Trust Territory"},
  {name: "Pakistan"},
  {name: "Palau"},
  {name: "Palestinian Territories"},
  {name: "Panama"},
  {name: "Panama Canal Zone"},
  {name: "Papua New Guinea"},
  {name: "Paraguay"},
  {name: "People's Democratic Republic of Yemen"},
  {name: "Peru"},
  {name: "Philippines"},
  {name: "Pitcairn Islands"},
  {name: "Poland"},
  {name: "Portugal"},
  {name: "Puerto Rico"},
  {name: "Qatar"},
  {name: "Romania"},
  {name: "Russia"},
  {name: "Rwanda"},
  {name: "Réunion"},
  {name: "Saint Barthélemy"},
  {name: "Saint Helena"},
  {name: "Saint Kitts and Nevis"},
  {name: "Saint Lucia"},
  {name: "Saint Martin"},
  {name: "Saint Pierre and Miquelon"},
  {name: "Saint Vincent and the Grenadines"},
  {name: "Samoa"},
  {name: "San Marino"},
  {name: "Saudi Arabia"},
  {name: "Senegal"},
  {name: "Serbia"},
  {name: "Serbia and Montenegro"},
  {name: "Seychelles"},
  {name: "Sierra Leone"},
  {name: "Singapore"},
  {name: "Slovakia"},
  {name: "Slovenia"},
  {name: "Solomon Islands"},
  {name: "Somalia"},
  {name: "South Africa"},
  {name: "South Georgia and the South Sandwich Islands"},
  {name: "South Korea"},
  {name: "Spain"},
  {name: "Sri Lanka"},
  {name: "Sudan"},
  {name: "South Sudan"},
  {name: "Suriname"},
  {name: "Svalbard and Jan Mayen"},
  {name: "Swaziland"},
  {name: "Sweden"},
  {name: "Switzerland"},
  {name: "Syria"},
  {name: "São Tomé and Príncipe"},
  {name: "Taiwan"},
  {name: "Tajikistan"},
  {name: "Tanzania"},
  {name: "Thailand"},
  {name: "Timor-Leste"},
  {name: "Togo"},
  {name: "Tokelau"},
  {name: "Tonga"},
  {name: "Trinidad and Tobago"},
  {name: "Tunisia"},
  {name: "Turkey"},
  {name: "Turkmenistan"},
  {name: "Turks and Caicos Islands"},
  {name: "Tuvalu"},
  {name: "U.S. Minor Outlying Islands"},
  {name: "U.S. Miscellaneous Pacific Islands"},
  {name: "U.S. Virgin Islands"},
  {name: "Uganda"},
  {name: "Ukraine"},
  {name: "United Arab Emirates"},
  {name: "United Kingdom"},
  {name: "Unknown or Invalid Region"},
  {name: "Uruguay"},
  {name: "Uzbekistan"},
  {name: "Vanuatu"},
  {name: "Vatican City"},
  {name: "Venezuela"},
  {name: "Vietnam"},
  {name: "Wake Island"},
  {name: "Wallis and Futuna"},
  {name: "Western Sahara"},
  {name: "Yemen"},
  {name: "Zambia"},
  {name: "Zimbabwe"},
  {name: "Åland Islands"}
])
Location.create!([
  {city_name: "Dallas", state_province: "TX", country: "USA", description: "This city right here!", coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bb87c920 "POINT (-96.79698789999999 32.7766642)">},
  {city_name: "London", state_province: "England", country: "United Kingdom", description: "Our former countrymen", coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba0fd9fc "POINT (-0.1277583 51.5073509)">},
  {city_name: "Miami", state_province: "FL", country: "USA", description: "A city in Southern Florida. ", coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bad73dd0 "POINT (-80.1917902 25.7616798)">},
  {city_name: "Birmingham", state_province: "AL", country: "USA", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bad731c8 "POINT (-86.80248999999999 33.5206608)">},
  {city_name: "Los Angeles", state_province: "CA", country: "USA", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bad725c0 "POINT (-118.2436849 34.0522342)">},
  {city_name: "San Diego", state_province: "CA", country: "USA", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba0f94d8 "POINT (-117.1610838 32.715738)">},
  {city_name: "St. Louis", state_province: "MO", country: "USA", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba0f8218 "POINT (-90.19940419999999 38.6270025)">},
  {city_name: "Orlando", state_province: "FL", country: "USA", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bad774e4 "POINT (-81.3792365 28.5383355)">},
  {city_name: "Yerevan", state_province: "Yerevan", country: "Armenia", description: "", coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bad768c8 "POINT (44.4991029 40.1791857)">},
  {city_name: "Hanoi", state_province: "", country: "Vietnam", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4ba0f53ec "POINT (105.8341598 21.0277644)">},
  {city_name: "Tokyo", state_province: "", country: "Japan", description: nil, coordinates: #<RGeo::Geographic::SphericalPointImpl:0x3fd4bad7b9b8 "POINT (139.7319925 35.7090259)">}
])