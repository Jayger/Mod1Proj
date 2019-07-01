class User < ActiveRecord::Base
    # user has many favorites
    has_many :duos
    # user also has many anime characters through the connection of favorites
    has_many :anime_chars, through: :duos

    def create_new_duo (name, anime_char)
        Duo.create(name: name, user_id: self.id, anime_char_id: anime_char.id)
    end

    # def create_username(name)
    #     User.create(name: name)
    # end


    


end