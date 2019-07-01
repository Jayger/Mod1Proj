class Duo < ActiveRecord::Base
    # belongs to a single user
    belongs_to :user
    # belongs to a single anime character
    belongs_to :anime_char
end
