class User < ApplicationRecord
   has_many :tags
   has_many :potins
   belongs_to :city 
end
