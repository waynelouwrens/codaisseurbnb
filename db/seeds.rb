Profile.destroy_all
Booking.destroy_all
Photo.destroy_all
Theme.destroy_all
Room.destroy_all
User.destroy_all

modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

wayne = User.create!( email: 'wayne@codaisseur.com', password: '123456')
marco = User.create!( email: 'marco@codaisseur.com', password: '123456')
talitha = User.create!( email: 'talitha@codaisseur.com', password: '123456')

room1 = Room.create!(
      home_type: "House",
      room_type: "Shared",
      accommodate: 2,
      bedroom_count: 2,
      bathroom_count: 3,
      listing_name: "You will never forget your stay!",
      description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade. Freegan yuccie everyday carry tote bag you probably haven't heard of them godard. Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
      address: "Colon 58, 1B, 11100 Cadiz (Spain)",
      has_tv: false,
      has_kitchen: true,
      has_airco: false,
      has_heating: false,
      has_internet: true,
      price: 100,
      active: true,
      user: wayne,
      themes: [white_washed, tempting_terrace]
      photos: [photo1]
    )

photo1 = Photo.create!(remote_image_url: "https://goo.gl/5Gujqt")
photo2 = Photo.create!(remote_image_url: "https://goo.gl/qv5aTA")
photo3 = Photo.create!(remote_image_url: "https://goo.gl/fk0Hc4")

photo4 = Photo.create!(remote_image_url: "https://goo.gl/Tm8psm")
photo5 = Photo.create!(remote_image_url: "https://goo.gl/fSpcCU")
photo6 = Photo.create!(remote_image_url: "https://goo.gl/UruxUV")

photo7 = Photo.create!(remote_image_url: "https://goo.gl/CndGn5")
photo8 = Photo.create!(remote_image_url: "https://goo.gl/KpvVO2")
photo9 = Photo.create!(remote_image_url: "https://goo.gl/sOtcGp")

Booking.create!(room: room1, user: marco, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create!(room: room1, user: talitha, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
