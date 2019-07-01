class AnimeChar < ActiveRecord::Base
    # anime character is a part many favorites 
    has_many :duos
    # anime character has many users through the connection to favorites
    has_many :users, through: :duos

    def self.sort
        self.all.sort_by {|a| a.name}
    end

    def self.sort_by_anime
        self.all.sort_by {|a| a.anime}
    end

    def self.find_chars_by_anime(anime)
        self.all.select {|a| a.anime == anime}
    end

    # def self.new_char(name, anime)
    #     AnimeChar.create(name: name, anime: anime)
    # end
    
end 