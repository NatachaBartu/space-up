class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :planet
  belongs_to :cabin
end
