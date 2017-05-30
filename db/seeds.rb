Artist.destroy_all


belakor = Artist.create!(name: "Be'lakor", genre: "Melodic Death Metal", country: "Australia", website: "belakorband.com", image: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg")
burial = Artist.create!(name: "Burial", genre: "Dubstep", country: "Great Britain", website: "burial.bandcamp.com", image: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/burial_qf8qnk.jpg")
insomnium = Artist.create!(name: "Insomnium", genre: "Melodic Death Metal", country: "Finland", website: "insomnium.net", image: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/insomnium_lt3gzo.jpg")
katatonia = Artist.create!(name: "Katatonia", genre: "Progressive Metal", country: "Sweden", website: "katatonia.com", image: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710095/katatonia_vbwedk.jpg")
rammstein = Artist.create!(name: "Rammstein", genre: "Neue Deutsche Harde", country: "Germany", website: "rammstein.de", image: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/rammstein_s1r2j2.jpg")

belakor_of_breath_and_bone= Album.create!(name: "Of Breath and Bone", year: 2012, artist: belakor, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710088/belakor_of_breath_and_bone_rgoder.jpg")
insomnium_winters_gate= Album.create!(name: "Winter's Gate", year: 2016, artist: insomnium, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710088/insomnium_winters_gate_xqubow.jpg")
insomnium_above_the_weeping_world = Album.create!(name: "Above the Weeping World", year: 2006, artist: insomnium, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710088/insomnium_above_the_weeping_world_mm3xnj.jpg")
burial_untrue = Album.create!(name: "Untrue", year: 2007, artist: burial, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710088/burial_untrue_lpgelf.jpg")
katatonia_the_fall_of_hearts = Album.create!(name: "The Fall of Hearts", year: 2016, artist: katatonia, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710088/katatonia_fall_of_hearts_pnqiec.jpg")
rammstein_reise_reise = Album.create!(name: "Reise, Reise", artist: rammstein, year: 2004, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710088/rammstein_reise_reise_f49uww.jpg")

Song.create!( name: "Part 1", album: insomnium_winters_gate, track_number: 1, artist: insomnium )
Song.create!( name: "Part 2", album: insomnium_winters_gate, track_number: 2, artist: insomnium )
Song.create!( name: "Part 3", album: insomnium_winters_gate, track_number: 3, artist: insomnium )
Song.create!( name: "Part 4", album: insomnium_winters_gate, track_number: 4, artist: insomnium )
Song.create!( name: "Part 5", album: insomnium_winters_gate, track_number: 5, artist: insomnium )
Song.create!( name: "Part 6", album: insomnium_winters_gate, track_number: 6, artist: insomnium )
Song.create!( name: "Part 7", album: insomnium_winters_gate, track_number: 6, artist: insomnium )
Song.create!( name: "Abeyance", album: belakor_of_breath_and_bone, track_number: 1, artist: belakor )
Song.create!( name: "Remnants", album: belakor_of_breath_and_bone, track_number: 2, artist: belakor )
Song.create!( name: "Fraught", album: belakor_of_breath_and_bone, track_number: 3, artist: belakor )
Song.create!( name: "Absit Omen", album: belakor_of_breath_and_bone, track_number: 4, artist: belakor )
Song.create!( name: "To Stir the Sea", album: belakor_of_breath_and_bone, track_number: 5, artist: belakor )
Song.create!( name: "In Parting", album: belakor_of_breath_and_bone, track_number: 6, artist: belakor )
Song.create!( name: "The Dream and the Waking", album: belakor_of_breath_and_bone, track_number: 7, artist: belakor )
Song.create!( name: "By Moon and Star", album: belakor_of_breath_and_bone, track_number: 8, artist: belakor )
Song.create!( name: "The Gale", album: insomnium_above_the_weeping_world, track_number: 1, artist: insomnium )
Song.create!( name: "Mortal Share", album: insomnium_above_the_weeping_world, track_number: 2, artist: insomnium )
Song.create!( name: "Drawn to Black", album: insomnium_above_the_weeping_world, track_number: 3, artist: insomnium )
Song.create!( name: "Change of Heart", album: insomnium_above_the_weeping_world, track_number: 4, artist: insomnium )
Song.create!( name: "At the Gates of Sleep", album: insomnium_above_the_weeping_world, track_number: 5, artist: insomnium )
Song.create!( name: "The Killjoy", album: insomnium_above_the_weeping_world, track_number: 6, artist: insomnium )
Song.create!( name: "Last Statement", album: insomnium_above_the_weeping_world, track_number: 7, artist: insomnium )
Song.create!( name: "Devoid of Caring", album: insomnium_above_the_weeping_world, track_number: 8, artist: insomnium )
Song.create!( name: "In the Groves of Death", album: insomnium_above_the_weeping_world, track_number: 9, artist: insomnium )
Song.create!( name: "Takeover", album: katatonia_the_fall_of_hearts, track_number: 1, artist: katatonia )
Song.create!( name: "Serein", album: katatonia_the_fall_of_hearts, track_number: 2, artist: katatonia )
Song.create!( name: "Old Heart Falls", album: katatonia_the_fall_of_hearts, track_number: 3, artist: katatonia )
Song.create!( name: "Decima", album: katatonia_the_fall_of_hearts, track_number: 4, artist: katatonia )
Song.create!( name: "Sanction", album: katatonia_the_fall_of_hearts, track_number: 5, artist: katatonia )
Song.create!( name: "Residual", album: katatonia_the_fall_of_hearts, track_number: 6, artist: katatonia )
Song.create!( name: "Serac", album: katatonia_the_fall_of_hearts, track_number: 7, artist: katatonia )
Song.create!( name: "Last Song Before the Fade", album: katatonia_the_fall_of_hearts, track_number: 8, artist: katatonia )
Song.create!( name: "Shifts", album: katatonia_the_fall_of_hearts, track_number: 9, artist: katatonia )
Song.create!( name: "The Night Subscriber", album: katatonia_the_fall_of_hearts, track_number: 10, artist: katatonia )
Song.create!( name: "Pale Flag", album: katatonia_the_fall_of_hearts, track_number: 11, artist: katatonia )
Song.create!( name: "Passer", album: katatonia_the_fall_of_hearts, track_number: 12, artist: katatonia )
Song.create!( name: "Untitled", album: burial_untrue, track_number: 1, artist: burial )
Song.create!( name: "Archangel", album: burial_untrue, track_number: 2, artist: burial )
Song.create!( name: "Near Dark", album: burial_untrue, track_number: 3, artist: burial )
Song.create!( name: "Ghost Hardware", album: burial_untrue, track_number: 4, artist: burial )
Song.create!( name: "Endorphin", album: burial_untrue, track_number: 5, artist: burial )
Song.create!( name: "Etched Headplate", album: burial_untrue, track_number: 6, artist: burial )
Song.create!( name: "In McDonalds", album: burial_untrue, track_number: 7, artist: burial )
Song.create!( name: "Untrue", album: burial_untrue, track_number: 8, artist: burial )
Song.create!( name: "Shell of Light", album: burial_untrue, track_number: 9, artist: burial )
Song.create!( name: "Dog Shelter", album: burial_untrue, track_number: 10, artist: burial )
Song.create!( name: "Homeless", album: burial_untrue, track_number: 11, artist: burial )
Song.create!( name: "UK", album: burial_untrue, track_number: 12, artist: burial )
Song.create!( name: "Raver", album: burial_untrue, track_number: 13, artist: burial )
Song.create!( name: "Reise, Reise", album: rammstein_reise_reise, track_number: 1, artist: rammstein )
Song.create!( name: "Mein Teil", album: rammstein_reise_reise, track_number: 2, artist: rammstein )
Song.create!( name: "Dalai Lama", album: rammstein_reise_reise, track_number: 3, artist: rammstein )
Song.create!( name: "Keine Lust", album: rammstein_reise_reise, track_number: 4, artist: rammstein )
Song.create!( name: "Los", album: rammstein_reise_reise, track_number: 5, artist: rammstein )
Song.create!( name: "Amerika", album: rammstein_reise_reise, track_number: 6, artist: rammstein )
Song.create!( name: "Moskau", album: rammstein_reise_reise, track_number: 7, artist: rammstein )
Song.create!( name: "Morgenstern", album: rammstein_reise_reise, track_number: 8, artist: rammstein )
Song.create!( name: "Stein um Stein", album: rammstein_reise_reise, track_number: 9, artist: rammstein )
Song.create!( name: "Ohne Dich", album: rammstein_reise_reise, track_number: 10, artist: rammstein )
Song.create!( name: "Amour", album: rammstein_reise_reise, track_number: 11, artist: rammstein )

user1 = User.create!(email:"henk@jan.com", password:"123456" )
