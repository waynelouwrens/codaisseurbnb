Profile.destroy_all
Booking.destroy_all
Photo.destroy_all
Theme.destroy_all
Room.destroy_all
User.destroy_all

#Users
wayne = User.create!( email: 'wayne@codaisseur.com', password: '123456')
marco = User.create!( email: 'marco@codaisseur.com', password: '123456')
talitha = User.create!( email: 'talitha@codaisseur.com', password: '123456')

#Themes
modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509271374/dc651m0mfwcs64zwikmd.jpg")
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277599/99ca8b27a84b46c373803df268167d15c3488e99_tvrfql_qwbflt.jpg")
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277621/20161005-q3895_hjoc8t_hagcfx.png")

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277651/20161005-60rbr_rp41qn_umafvh.png")
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277671/20161005-e8xxp_cap4y9_kdyijg.png")
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277685/20161005-zsogv_l4urst_j36j4o.png")

photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277717/0676bf3a1f914f38e9b5b6b9d69e381495aa6abb_abx9ir_s2yy8p.jpg")
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277732/20161005-brctd_fju0e9_tawluu.png")
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waynelouwrens/image/upload/v1509277748/20161005-ngwqx_erq7sf_ugwqrh.png")


# Rooms
room1 = Room.create!(
  home_type: "House",
  room_type: "Shared",
  accommodate: 2,
  bedroom_count: 2,
  bathroom_count: 3,
  listing_name: "You will never forget your stay!",
  description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade.",
  address: "Colon 58, 1B, 11100 Cadiz (Spain)",
  has_tv: false,
  has_kitchen: true,
  has_airco: false,
  has_heating: false,
  has_internet: true,
  price: 100,
  active: true,
  user: wayne,
  themes: [modern_and_minimal, sleek_and_sophisticated],
  photos: [photo1, photo2, photo3]
)

room2 = Room.create!(
  home_type: "House",
  room_type: "Shared",
  accommodate: 2,
  bedroom_count: 2,
  bathroom_count: 3,
  listing_name: "A place in the middle of Holland",
  description: "Freegan yuccie everyday carry tote bag you probably haven't heard of them godard.",
  address: "Daguerrestraat 23, 1054TG Utrecht (Netherlands)",
  has_tv: false,
  has_kitchen: true,
  has_airco: false,
  has_heating: false,
  has_internet: true,
  price: 100,
  active: true,
  user: marco,
  themes: [warm_and_cozy, a_mans_touch],
  photos: [photo4, photo5, photo6]
)

room3 = Room.create!(
  home_type: "House",
  room_type: "Shared",
  accommodate: 2,
  bedroom_count: 2,
  bathroom_count: 3,
  listing_name: "Great for a Weekend",
  description: "Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
  address: "Tottenham Court Road 14, W1T 1JY London (UK)",
  has_tv: false,
  has_kitchen: true,
  has_airco: false,
  has_heating: false,
  has_internet: true,
  price: 100,
  active: true,
  user: talitha,
  themes: [elegant_and_ornate, white_washed],
  photos: [photo7, photo8, photo9]
)

# Bookings
Booking.create!(room: room1, user: marco, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create!(room: room2, user: talitha, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
