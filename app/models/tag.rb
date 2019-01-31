class Tag < ApplicationRecord
    belongs_to :user
    has_many :posts
    has_many :gossips,  through: :posts
end
