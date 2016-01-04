# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist_list = Artist.create ([{
  location: "los Angeles",
  name: "Mear1",
  artsamples: "http://www.unexplainable.net/brainbox/uploads/2/Mearismmessage.jpg",
  description: "High vibrational visionary Urban art"
}])

artist_list = Artist.create([{
  location: "los angeles",
  name: "cryptik",
  artsamples: "http://411posters.com/wp-content/uploads/2014/06/cryptik-the-jewel-in-the-lotus-29.5x29_.5-1xrun-04_.jpg",
  description: "urban zen themed stylized calligraphy"
}])

artist_list = Artist.create([{
  location: "los angeles",
  name: "abcnt",
  artsamples: "https://abcnt.files.wordpress.com/2008/03/abcnt.jpg?w=198&h=296",
  description: "revolutionary themed urban activist art"
}])

client_list = Client.create ([{
  name: "the loft exchange",
  wallspace: "https://trademarks.justia.com/media/image.php?serial=77380173",
  location: "DTLA",
  city: "los angeles"
  }])

client_list = Client.create ([{
  name: "loft rental",
  wallspace: "",
  location: "DTLA",
  city: "los angeles"
  }])

client_list = Client.create ([{
  name: "DTLA_Lofts",
  wallspace: "http://pauljohnston.com/wp-content/files_mf/006_436_wellington_w_603.jpg",
  location: "DTLA",
  city: "los angeles"
  }])
