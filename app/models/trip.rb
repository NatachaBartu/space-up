class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :planet
  belongs_to :cabin
  accepts_nested_attributes_for :cabin
  has_one_attached :picture
  before_validation :convert_price_to_cents, if: :price_changed?


  private

  def convert_price_to_cents 
    self.price = (self.attributes_before_type_cast["price"].to_f * 100).round
  end 
end
