class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   def full_name
     "#{self.first_name} #{self.last_name}"
   end

   def full_location
     "#{self.hometown}, #{self.citizenship}"
   end

  enum gender: {
   "Male": 1,
   "Female": 2,
   "Not sure": 3,
   "Prefer not to say": 4,
   "Neuchacho": 5,
   "Other": 6
  }

  enum citizenship: {
   "USA": 1,
   "Afghanistan": 2,
   "Albania": 3,
   "Algeria": 4,
   "American Samoa": 5,
   "Andorra": 6,
   "Angola": 7,
   "Anguilla": 8,
   "Antarctica": 9,
   "Antigua and Barbuda": 10,
   "Argentina": 11,
   "Armenia": 12,
   "Aruba": 13,
   "Australia": 14,
   "Austria": 15,
   "Azerbaijan": 16,
   "Bahamas": 17,
   "Bahrain": 18,
   "Bangladesh": 19,
   "Barbados": 20,
   "Belarus": 21,
   "Belgium": 22,
   "Belize": 23,
   "Benin": 24,
   "Bermuda": 25,
   "Bhutan": 26,
   "Bolivia": 27,
   "Bosnia and Herzegovina": 28,
   "Botswana": 29,
   "Bouvet Island": 30,
   "Brazil": 31,
   "British Antarctic Territory": 32,
   "British Indian Ocean Territory": 33,
   "British Virgin Islands": 34,
   "Brunei": 35,
   "Bulgaria": 36,
   "Burkina Faso": 37,
   "Burundi": 38,
   "Cambodia": 39,
   "Cameroon": 40,
   "Canada": 41,
   "Canton and Enderbury Islands": 42,
   "Cape Verde": 43,
   "Cayman Islands": 44,
   "Central African Republic": 45,
   "Chad": 46,
   "Chile": 47,
   "China": 48,
   "Christmas Island": 49,
   "Cocos [Keeling] Islands": 50,
   "Colombia": 51,
   "Comoros": 52,
   "Congo - Brazzaville": 53,
   "Congo - Kinshasa": 54,
   "Cook Islands": 55,
   "Costa Rica": 56,
   "Croatia": 57,
   "Cuba": 58,
   "Cyprus": 59,
   "Czech Republic": 60,
   "Côte d’Ivoire": 61,
   "Denmark": 62,
   "Djibouti": 63,
   "Dominica": 64,
   "Dominican Republic": 65,
   "Dronning Maud Land": 66,
   "Ecuador": 68,
   "Egypt": 69,
   "El Salvador": 70,
   "Equatorial Guinea": 71,
   "Eritrea": 72,
   "Estonia": 73,
   "Ethiopia": 74,
   "Falkland Islands": 75,
   "Faroe Islands": 76,
   "Fiji": 77,
   "Finland": 78,
   "France": 79,
   "French Guiana": 80,
   "French Polynesia": 81,
   "French Southern Territories": 82,
   "French Southern and Antarctic Territories": 83,
   "Gabon": 84,
   "Gambia": 85,
   "Georgia": 86,
   "Germany": 87,
   "Ghana": 88,
   "Gibraltar": 89,
   "Greece": 90,
   "Greenland": 91,
   "Grenada": 92,
   "Guadeloupe": 93,
   "Guam": 94,
   "Guatemala": 95,
   "Guernsey": 96,
   "Guinea": 97,
   "Guinea-Bissau": 98,
   "Guyana": 99,
   "Haiti": 100,
   "Heard Island and McDonald Islands": 101,
   "Honduras": 102,
   "Hong Kong SAR China": 103,
   "Hungary": 104,
   "Iceland": 105,
   "India": 106,
   "Indonesia": 107,
   "Iran": 108,
   "Iraq": 109,
   "Ireland": 110,
   "Isle of Man": 111,
   "Israel": 112,
   "Italy": 113,
   "Jamaica": 114,
   "Japan": 115,
   "Jersey": 116,
   "Johnston Island": 117,
   "Jordan": 118,
   "Kazakhstan": 119,
   "Kenya": 120,
   "Kiribati": 121,
   "Kuwait": 122,
   "Kyrgyzstan": 123,
   "Laos": 124,
   "Latvia": 125,
   "Lebanon": 126,
   "Lesotho": 127,
   "Liberia": 128,
   "Libya": 129,
   "Liechtenstein": 130,
   "Lithuania": 131,
   "Luxembourg": 132,
   "Macau SAR China": 133,
   "Macedonia": 134,
   "Madagascar": 135,
   "Malawi": 136,
   "Malaysia": 137,
   "Maldives": 138,
   "Mali": 139,
   "Malta": 140,
   "Marshall Islands": 141,
   "Martinique": 142,
   "Mauritania": 143,
   "Mauritius": 144,
   "Mayotte": 145,
   "Mexico": 146,
   "Micronesia": 147,
   "Midway Islands": 148,
   "Moldova": 149,
   "Monaco": 150,
   "Mongolia": 151,
   "Montenegro": 152,
   "Montserrat": 153,
   "Morocco": 154,
   "Mozambique": 155,
   "Myanmar [Burma]": 156,
   "Namibia": 157,
   "Nauru": 158,
   "Nepal": 159,
   "Netherlands": 160,
   "Neutral Zone": 161,
   "New Caledonia": 162,
   "New Zealand": 163,
   "Nicaragua": 164,
   "Niger": 165,
   "Nigeria": 166,
   "Niue": 167,
   "Norfolk Island": 168,
   "North Korea": 169,
   "North Vietnam": 170,
   "Northern Mariana Islands": 171,
   "Norway": 172,
   "Oman": 173,
   "Pacific Islands Trust Territory": 174,
   "Pakistan": 175,
   "Palau": 176,
   "Palestinian Territories": 177,
   "Panama": 178,
   "Panama Canal Zone": 179,
   "Papua New Guinea": 180,
   "Paraguay": 181,
   "People's Democratic Republic of Yemen": 182,
   "Peru": 183,
   "Philippines": 184,
   "Pitcairn Islands": 185,
   "Poland": 186,
   "Portugal": 187,
   "Puerto Rico": 188,
   "Qatar": 189,
   "Romania": 190,
   "Russia": 191,
   "Rwanda": 192,
   "Réunion": 193,
   "Saint Barthélemy": 194,
   "Saint Helena": 195,
   "Saint Kitts and Nevis": 196,
   "Saint Lucia": 197,
   "Saint Martin": 198,
   "Saint Pierre and Miquelon": 199,
   "Saint Vincent and the Grenadines": 200,
   "Samoa": 201,
   "San Marino": 202,
   "Saudi Arabia": 203,
   "Senegal": 204,
   "Serbia": 205,
   "Serbia and Montenegro": 206,
   "Seychelles": 207,
   "Sierra Leone": 208,
   "Singapore": 209,
   "Slovakia": 210,
   "Slovenia": 211,
   "Solomon Islands": 212,
   "Somalia": 213,
   "South Africa": 214,
   "South Georgia and the South Sandwich Islands": 215,
   "South Korea": 216,
   "Spain": 217,
   "Sri Lanka": 218,
   "Sudan": 219,
   "South Sudan": 220,
   "Suriname": 221,
   "Svalbard and Jan Mayen": 222,
   "Swaziland": 223,
   "Sweden": 224,
   "Switzerland": 225,
   "Syria": 226,
   "São Tomé and Príncipe": 227,
   "Taiwan": 228,
   "Tajikistan": 229,
   "Tanzania": 230,
   "Thailand": 231,
   "Timor-Leste": 232,
   "Togo": 233,
   "Tokelau": 234,
   "Tonga": 235,
   "Trinidad and Tobago": 236,
   "Tunisia": 237,
   "Turkey": 238,
   "Turkmenistan": 239,
   "Turks and Caicos Islands": 240,
   "Tuvalu": 241,
   "U.S. Minor Outlying Islands": 242,
   "U.S. Miscellaneous Pacific Islands": 243,
   "U.S. Virgin Islands": 244,
   "Uganda": 245,
   "Ukraine": 246,
   "United Arab Emirates": 247,
   "United Kingdom": 248,
   "Unknown or Invalid Region": 249,
   "Uruguay": 250,
   "Uzbekistan": 251,
   "Vanuatu": 252,
   "Vatican City": 253,
   "Venezuela": 254,
   "Vietnam": 255,
   "Wake Island": 256,
   "Wallis and Futuna": 257,
   "Western Sahara": 258,
   "Yemen": 259,
   "Zambia": 260,
   "Zimbabwe": 261,
   "Åland Islands": 262
  }

end
