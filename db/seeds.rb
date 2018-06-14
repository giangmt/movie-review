# Genre.find_or_create_by!(name: "Action")
# Genre.find_or_create_by!(name: "Adventure")
# Genre.find_or_create_by!(name: "Drama")
# Genre.find_or_create_by!(name: "War")
# Genre.find_or_create_by!(name: "Animation")
# Genre.find_or_create_by!(name: "Sci-Fi")
# Genre.find_or_create_by!(name: "Thriller")
# Genre.find_or_create_by!(name: "Fantasy")
# Genre.find_or_create_by!(name: "Crime")
# Genre.find_or_create_by!(name: "Comedy")

# Director.create!(name: "Luc Besson")
# Director.create!(name: "Steven S. DeKnight")
# Director.create!(name: "James Marsh")
# Director.create!(name: "Saul Dibb")

# Cast.create!(name: "Rosanna Arquette")
# Cast.create!(name: "John Boyega")
# Cast.create!(name: "Rachel Weisz")
# Cast.create!(name: "Paul Bettany")


# Movie.create!(name: "The Mercy",
#   youtube_id: "ToN2G3K5pOE",
#   synopsis: "The incredible story of Donald Crowhurst , an amateur sailor who competed in the 1968 Sunday Times Golden Globe Race in the hope of becoming the first person in history to single-handedly circumnavigate the globe without stopping. With an unfinished boat and his business and house on the line, Donald leaves his wife, Clare and their children behind, hesitantly embarking on an adventure on his boat the Teignmouth Electron. The story of Crowhurst's dangerous solo voyage and the struggles he confronted on the epic journey while his family awaited his return is one of the most enduring mysteries of recent times.",
#   length: "1hr 20min",
#   premiere: "2018",
#   genre_id: 1,
#   director_id: 1)

# MovieImage.create!(image_url: "https://yts.am/assets/images/movies/the_mercy_2018/medium-cover.jpg",
# 	movie_id: 1)

# MovieCast.create!(cast_id: 1,
# 	movie_id: 1)

# Movie.create!(name: "Journey's End",
#   youtube_id: "tLpyaLNfudY",
#   synopsis: %{Set in a dugout in Aisne in 1918, it is the story of a group of British officers, led by the mentally disintegrating young officer Stanhope, as they await their fate.},
#   length: "1hr 20min",
#   premiere: "2017",
#   genre_id: 2,
#   director_id: 2)

# MovieImage.create!(image_url: "https://yts.am/assets/images/movies/journeys_end_2017/medium-cover.jpg",
# 	movie_id: 2)

# MovieCast.create!(cast_id: 2,
# 	movie_id: 2)

Movie.create!(name: "Pacific Rim: Uprising",
  youtube_id: "EhiLLOhVis",
  synopsis: %{Jake Pentecost, son of Stacker Pentecost, reunites with Mako Mori to lead a new generation of Jaeger pilots, including rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.},
  length: "1hr 20min",
  premiere: "2018",
  genre_id: 3,
  director_id: 3)

MovieImage.create!(image_url: "https://yts.am/assets/images/movies/pacific_rim_uprising_2018/medium-cover.jpg",
	movie_id: 3)

MovieCast.create!(cast_id: 3,
	movie_id: 3)
# Movie.create!(name: "Pacific Rim: Uprising",
#   image: "https://yts.am/assets/images/movies/pacific_rim_uprising_2018/medium-cover.jpg",
#   trailer: "EhiLLOhVis",
#   synopsis: "Jake Pentecost, son of Stacker Pentecost, reunites with Mako Mori to lead a new generation of Jaeger pilots, including rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.",
#   release_date: "2018-04-15",
#   genre_id: 1,
#   description_id: 1)
# Movie.create!(name: "The Big Blue",
#   image: "https://yts.am/assets/images/movies/the_big_blue_1988/medium-cover.jpg",
#   trailer: "82onGmBx9ZM",
#   synopsis: "Enzo and Jacques have known each other for a long time. Their friendship started in their childhood days in the Mediterranean. They were not real friends in these days, but there was something they both loved and used to do the whole day long: diving. One day Jacques' father, who was a diver too, died in the Mediterranean sea. After that incident Enzo and Jacques lost contact. After several years, Enzo and Jacques had grown up, Johanna, a young clerk in an insurance office, has to go to Peru. There she meets Jacques who is being studied by a group of scientists. He dives for some minutes into ice-cold water and the scientists monitor his physical state that is more like a dolphin than human. Johanna can not believe what she sees and gets very interested in Jacques but she's unable to get acquainted with him. Some weeks later back in her office, she finds out that Jacques will be competing in a diving championship that takes place in Taormina, Sicily. In order to see Jacques again she ...",
#   release_date: "1995-09-12",
#   genre_id: 2,
#   description_id: 2)
# Movie.create!(name: "Black Panther",
#   image: "https://yts.am/assets/images/movies/black_panther_2018/medium-cover.jpg",
#   trailer: "xjDjIWPwcPU",
#   synopsis: "After the events of Captain America: Civil War, King T'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country's new leader. However, T'Challa soon finds that he is challenged for the throne from factions within his own country. When two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with C.I.A. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war.",
#   release_date: "1998-09-12",
#   genre_id: 5,
#   description_id: 4)
# Movie.create!(name: "Swinging Safari",
#   image: "https://yts.am/assets/images/movies/swinging_safari_2018/medium-cover.jpg",
#   trailer: "6702nIIXn38",
#   synopsis: "Australia, 1975. The beach suburb of Nobbys Beach is a place that revolves around surf mats, baby oil, boxed wine and the new miracle of Kentucky Fried Chicken. 14 year-old Jeff tries to find his feet in a world changing faster than his hormones, and deal with his crush on shy and sensitive girl-next-door Melly. When the beach town suddenly hits the spotlight after the body of a 200-ton whale is washed ashore, Jeff and Melly think it's the biggest thing that ever happened in their lives. Meanwhile, their eccentric parents are catching up with the sexual revolution that has also washed up on Australia's beaches. And just like the decaying whale, it's all about to go spectacularly wrong.",
#   release_date: "2018-10-12",
#   genre_id: 6,
#   description_id: 3)
# Movie.create!(name: "Dark Crimes",
#   image: "https://yts.am/assets/images/movies/dark_crimes_2016/medium-cover.jpg",
#   trailer: "5WWC0GTP08w",
#   synopsis: "A murder investigation of a slain business man turns to clues found in an author's book about an eerily similar crime. Based on the 2008 article by David Grann.",
#   release_date: "1985-09-12",
#   genre_id: 7,
#   description_id: 2)
# Movie.create!(name: "The Dark Knight",
#   image: "https://yts.am/assets/images/movies/The_Dark_Knight_2008/medium-cover.jpg",
#   trailer: "vuvykaDj2dY",
#   synopsis: "Set within a year after the events of Batman Begins, Batman, Lieutenant James Gordon, and new district attorney Harvey Dent successfully begin to round up the criminals that plague Gotham City until a mysterious and sadistic criminal mastermind known only as the Joker appears in Gotham, creating a new wave of chaos. Batman's struggle against the Joker becomes deeply personal, forcing him to and improve his technology to stop him. A love triangle develops between Bruce Wayne, Dent and Rachel Dawes.",
#   release_date: "1998-09-12",
#   genre_id: 8,
#   description_id: 4)
# Movie.create!(name: "Wall Street",
#   image: "https://yts.am/assets/images/movies/Wall_Street_REMASTERED_1987/medium-cover.jpg",
#   trailer: "7b4BcbhGggM",
#   synopsis: "On the Wall Street of the 1980s, Bud Fox is a stockbroker full of ambition, doing whatever he can to make his way to the top. Admiring the power of the unsparing corporate raider Gordon Gekko, Fox entices Gekko into mentoring him by providing insider trading. As Fox becomes embroiled in greed and underhanded schemes, his decisions eventually threaten the livelihood of his scrupulous father. Faced with this dilemma, Fox questions his loyalties.",
#   release_date: "1987-09-12",
#   genre_id: 9,
#   description_id: 4)
# Movie.create!(name: "The Wolf of Wall Street",
#   image: "https://yts.am/assets/images/movies/The_Wolf_of_Wall_Street_2013/medium-cover.jpg",
#   trailer: "idAVRvQeYAE",
#   synopsis: "Jordan Belfort is a Long Island penny stockbroker who served 22 months in prison for defrauding investors in a massive 1990s securities scam that involved widespread corruption on Wall Street and in the corporate banking world, including shoe designer Steve Madden.",
#   release_date: "2013-09-12",
#   genre_id: 10,
#   description_id: 4)
# Movie.create!(name: "Knight and Day",
#   image: "https://yts.am/assets/images/movies/Knight_and_Day_2010/medium-cover.jpg",
#   trailer: "JGPl86DBNNs",
#   synopsis: "June has a garage in Boston. At an airport heading home, a man bumps into her a few times and tries to keep her off the plane. He's under FBI surveillance; they wonder if he and she are working together, so they let both on a flight full of armed men wanting to arrest the stranger. He's Roy, he shoots his way out of trouble and tells her she's in danger. She's home the next day, miraculously, when agents pick her up; Roy saves her again, and a transcontinental chase ensues with Roy convincing her that he's the good guy, protecting an energy source that a rogue agent wants to sell on the black market. Can she trust Roy, and will trust matter when the bullets start flying?",
#   release_date: "2010-09-12",
#   genre_id: 10,
#   description_id: 2)
# Movie.create!(name: "Knight of Cups",
#   image: "https://yts.am/assets/images/movies/knight_of_cups_2015/medium-cover.jpg",
#   trailer: "SI2j1FHCjtM",
#   synopsis: "A writer indulging in all that Los Angeles and Las Vegas has to offer undertakes a search for love and self via a series of adventures with six different women.",
#   release_date: "2012-09-12",
#   genre_id: 9,
#   description_id: 4)
# Movie.create!(name: "Toy Story",
#   image: "https://yts.am/assets/images/movies/Toy_Story_1995/medium-cover.jpg",
#   trailer: "KYz2wyBy3kc",
#   synopsis: "A little boy named Andy loves to be in his room, playing with his toys, especially his doll named. But, what do the toys do when Andy is not with them, they come to life. Woody believes that he has life (as a toy) good. However, he must worry about Andy's family moving, and what Woody does not know is about Andy's birthday party. Woody does not realize that Andy's mother gave him an action figure known as Buzz Lightyear, who does not believe that he is a toy, and quickly becomes Andy's new favorite toy. Woody, who is now consumed with jealousy, tries to get rid of Buzz. Then, both Woody and Buzz are now lost. They must find a way to get back to Andy before he moves without them, but they will have to pass through a ruthless toy killer, Sid Phillips.",
#   release_date: "1995-09-12",
#   genre_id: 5,
#   description_id: 3)
# Movie.create!(name: "Toy Story 3",
#   image: "https://yts.am/assets/images/movies/Toy_Story_3_2010/medium-cover.jpg",
#   trailer: "JcpWXaA2qeg",
#   synopsis: "Woody, Buzz and the whole gang are back. As their owner Andy prepares to depart for college, his loyal toys find themselves in daycare where untamed tots with their sticky little fingers do not play nice. So, it's all for one and one for all as they join Barbie's counterpart Ken, a thespian hedgehog named Mr. Pricklepants and a pink, strawberry-scented teddy bear called Lots-o'-Huggin' Bear to plan their great escape.",
#   release_date: "2010-09-12",
#   genre_id: 5,
#   description_id: 3)



# Movie.update([2,3],
  # [{length: "01:00:00"},{length: "02:21:22"}] )
# Movie.update([1,2],[{trailer: "_EhiLLOhVis"}, {trailer: "82onGmBx9ZM"}])