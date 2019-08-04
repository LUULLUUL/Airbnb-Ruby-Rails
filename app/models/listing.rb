class Listing < ApplicationRecord
  validates :available_beds,
    presence: true,
    numericality: { only_integer: true, greater_than: 0}
  validae :price,
    presence: true,
    numericality: { only_integer: true, greater_than: 0}
  validae :description, 
    presence: true,
    length: { minimum: 140}

  validates :welcome_message,
    presence: true,
  
  belongs_to :admin, class_name: "User"
  belongs_to :city 
  has_many :reservations

end
