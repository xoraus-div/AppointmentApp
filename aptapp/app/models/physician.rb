class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, presence: true
  validates :speciality, presence: true
end
