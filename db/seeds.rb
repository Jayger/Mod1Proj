AnimeChar.destroy_all
User.destroy_all
Duo.destroy_all

c1 = AnimeChar.create(name: "Goku", anime: "Dragon Ball")
c2 = AnimeChar.create(name: "Naruto", anime: "Naruto")
c3 = AnimeChar.create(name: "Luffy", anime: "One Piece")
c4 = AnimeChar.create(name: "Ichigo", anime: "Bleach")
c5 = AnimeChar.create(name: "Yusuke", anime: "YuYu Hakusho")
c6 = AnimeChar.create(name: "Inuyasha", anime: "Inuyasha")
c7 = AnimeChar.create(name: "Sasuke", anime: "Naruto")
c8 = AnimeChar.create(name: "Vegeta", anime: "Dragon Ball")
c9 = AnimeChar.create(name: "All Might", anime: "MHA")
c10 = AnimeChar.create(name: "Deku", anime: "MHA")
c11 = AnimeChar.create(name: "Aizen", anime: "Bleach")
c12 = AnimeChar.create(name: "Gon", anime: "HunterxHunter")
c13 = AnimeChar.create(name: "Gintoki", anime: "Gintama")
c12 = AnimeChar.create(name: "Kankei", anime: "Tokyo Ghoul")
c13 = AnimeChar.create(name: "Kenshin", anime: "Rurouni Kenshin")


user1 = User.create(name: "Jordan")



f1 = Duo.create(name: "God Tier", user_id: user1.id, anime_char_id: c1.id)