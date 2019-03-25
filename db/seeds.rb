AnimeChar.destroy_all
User.destroy_all
Roster.destroy_all

goku = AnimeChar.create(name: "Goku", anime: "Dragon Ball")
naruto = AnimeChar.create(name: "Uzumaki Naruto", anime: "Naruto")
luffy = AnimeChar.create(name: "Luffy D. Monkey", anime: "One Piece")
ichigo = AnimeChar.create(name: "Kurosaki Ichigo", anime: "Bleach")


jordan = User.create(name: "Jordan")
eric = User.create(name: "Eric")

roster1 = Roster.create(name: "Team A", user_id: jordan.id, anime_char_id: goku.id)
roster2 = Roster.create(name: "Team B", user_id: eric.id, anime_char_id: naruto.id)