Band.create(id: 1, name: "Yiruma")
Band.create(id: 2, name: "Madeon")

Album.create(id: 1, title: "First Love", band_id: 1, live_or_studio: "Studio")
Album.create(id: 2, title: "Adventure", band_id: 2, live_or_studio: "Studio")

Track.create(id: 1, title: "I", album_id: 1, bonus_or_regular: "Regular", lyrics: "a a a")
Track.create(id: 2, title: "River Flows in You", album_id: 1, bonus_or_regular: "Bonus", lyrics: "b b b")
Track.create(id: 3, title: "Kiss the Rain", album_id: 1, bonus_or_regular: "Regular", lyrics: "c c c")

Track.create(id: 4, title: "Isometric", album_id: 2, bonus_or_regular: "Regular", lyrics: "doo doo doo")
Track.create(id: 5, title: "Cut the Kid", album_id: 2, bonus_or_regular: "Bonus", lyrics: "la la la")
Track.create(id: 6, title: "Technicolor", album_id: 2, bonus_or_regular: "Regular", lyrics: "boom boom")
