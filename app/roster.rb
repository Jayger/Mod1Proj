class Roster < ActiveRecord::Base
    belongs_to :user
    belongs_to :anime_char

end
