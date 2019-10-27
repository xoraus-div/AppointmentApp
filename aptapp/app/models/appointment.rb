class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  validates :visit, presence: true
  validates :physician, presence: true
  validates :patient, presence: true
end
