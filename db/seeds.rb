# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Concert.create(title: "Simply Green Day", time: "18:00", date: "13/7/2017", venue: "Mercedes Arena", band: "Green Day", description: "8 grammies", image_url: "https://pbs.twimg.com/profile_images/763738962796044288/-BYa2Lps.jpg")
c2 = Concert.create(title: "Cold Play", time: "01:00", date: "12/8/2017", venue: "Klunkerkranich", band: "Cold Play", description: "Ready to explode", image_url: "http://i2.kym-cdn.com/entries/icons/original/000/021/038/coldplay.jpg")
c3 = Concert.create(title: "U2 is back in Berlin", time: "16:00", date: "1/1/2018", venue: "Brandenburger Gate", band: "U2", description: "One1", image_url: "http://www.musiclipse.com/wp-content/uploads/2014/02/u2-wallpaper-later-years-1.jpg")
c4 = Concert.create(title: "They are back", time: "02:00", date: "24/12/2017", venue: "Olimpya Stadium", band: "Rolling Stones", description: "Get ready for the concert of your life!", image_url: "http://www.billboard.com/files/styles/900_wide/public/media/the-rolling-stones-1964-billboard-650.jpg")