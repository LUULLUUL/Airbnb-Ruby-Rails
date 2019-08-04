class Reservation < ApplicationRecord
  
  before_validation :start_must_be_before_end_time
  validates :start_time,
    presence: true
  validates :end_time, 
    presence: true
  belongs_to :guest, class_name: "User"
  belongs_to :listing  

  def overlaping_reservation?(datetime)
    # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
  end
 
  private

  def start_must_be_before_end_time
    errors.add(:start_time, "must be before end time") unless
       start_time > end_time
  end 

end
