class CreateAnimeChars < ActiveRecord::Migration[5.2]
    def change 
        create_table :anime_chars do |t|
            t.string :name
            t.string :anime
        end
    end
end