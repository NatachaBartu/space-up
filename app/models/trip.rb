class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :planet
  has_many :cabins
  

  
end
