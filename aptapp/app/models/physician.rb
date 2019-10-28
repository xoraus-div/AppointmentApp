class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, presence: true
  validates :speciality, presence: true
  has_many :offices
  accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true
end
