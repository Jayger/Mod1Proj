class User < ActiveRecord::Base
    has_many :rosters
    has_many :anime_chars, through: :rosters
end