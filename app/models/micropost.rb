class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites 
  # ,class_name: 'Favarite', foreign_key: 'micropost_id'
    #has_many :favoriting, through: :favorites, source: :user
    #has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :users, through: :favarites
  
   
end
