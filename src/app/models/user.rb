class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_one :address
  has_many :trips

  has_many :sold_orders, class_name: "Order", foreign_key: "seller_id"
  has_many :bought_orders, class_name: "Order", foreign_key: "buyer_id"

  
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :email, presence: true
        
        
end