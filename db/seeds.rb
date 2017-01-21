# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#c1 = Concert.create(title: "Simply Green Day", time: "18:00", date: "13/7/2017", venue: "Mercedes Arena", band: "Green Day", description: "8 grammies", image_url: "https://pbs.twimg.com/profile_images/763738962796044288/-BYa2Lps.jpg")
#c2 = Concert.create(title: "Cold Play", time: "01:00", date: "12/8/2017", venue: "Klunkerkranich", band: "Cold Play", description: "Ready to explode", image_url: "http://i2.kym-cdn.com/entries/icons/original/000/021/038/coldplay.jpg")
#c3 = Concert.create(title: "U2 is back in Berlin", time: "16:00", date: "1/1/2018", venue: "Brandenburger Gate", band: "U2", description: "One1", image_url: "http://www.musiclipse.com/wp-content/uploads/2014/02/u2-wallpaper-later-years-1.jpg")
#c4 = Concert.create(title: "They are back", time: "02:00", date: "24/12/2017", venue: "Olimpya Stadium", band: "Rolling Stones", description: "Get ready for the concert of your life!", image_url: "http://www.billboard.com/files/styles/900_wide/public/media/the-rolling-stones-1964-billboard-650.jpg")

c6 = Concert.create(title: "Die Bacabs", time: "21:30", date: "21/1/2017",  band: "Die Bacabs", description: "Punkadelic from Berlin", image_url: "https://i.ytimg.com/vi/nt7aoShVUMo/maxresdefault.jpg", venue_id: c6.id)
Venue.create(name: "Supamolly", phone: "+49 (0) 30 / 29 00 72 94", email: "info@supamolly.de", website: "http://www.supamolly.de/", facebook: "https://www.facebook.com/pages/Supamolly/148626085195324?fref=ts", address1:"Jessner Str. 41", address2:"", city:"Berlin", postal_code: "10247", state:"Berlin", country:"Germany",cover_image: "https://c2.staticflickr.com/8/7443/12287363114_067d9543bf_b.jpg", description: "Former squat place turn into a cool bar/ concert hall" )

c7 = Concert.create(title: "Keith Dunn & The Love Gloves", time: "21:00", date: "4/2/2017", band: "Keith Dunn & The Love Gloves", description: "Blues + Deltabilly", image_url: "https://i.ytimg.com/vi/8tUUcOMw9II/maxresdefault.jpg", venue_id: c7.id)
Venue.create(name: "Yorkschlösschen", phone: "030 - 215 80 70", email: "info@yorckschloesschen.de ", website: "http://www.yorckschloesschen.de/", facebook: "https://www.facebook.com/Daehmlow", address1:"Yorckstr. 15", address2:"", city:"Berlin", postal_code: "10965", state:"Berlin", country:"Germany",cover_image: "http://www.yorckschloesschen.de/bilder/sonst/panorama.jpg", description: "The Yorckschlösschen has existed under same name for over 120 years now and has long-since become a Kreuzberg institution. Following a period as a rather middle-class corner pub in the 1960s, it increasingly became an artists' watering hole in the early '70s. Since then it has been an essential hub of social life in the Kreuzberg neighbourhood or Kiez. This tavern is a true melting pot. Everybody meets here – young and old, poor and rich – and no-one takes exception to anyone else. With a persistence bordering on stubbornness (Zitty 18/95), nothing is changed here, and time seems to have stood still – which is the way the guests like it." )
