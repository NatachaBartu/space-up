class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :planet
  belongs_to :cabin
  accepts_nested_attributes_for :cabin
end
