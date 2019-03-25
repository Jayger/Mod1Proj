class CreateRosters < ActiveRecord::Migration[5.2]
    def change
        create_table :rosters do |t|
            t.string :name
            t.integer :user_id
            t.integer :anime_char_id
        end
    end
end