class CreateRosters < ActiveRecord::Migration[5.2]
    def change
        create_table :rosters do |t|
            t.string :user
            t.string :anime_char
        end
    end
end