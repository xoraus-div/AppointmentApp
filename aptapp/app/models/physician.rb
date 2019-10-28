class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, presence: true
  validates :speciality, presence: true
  has_many :offices, dependent: :destroy
  accepts_nested_attributes_for :offices, allow_destroy: true, reject_if: :all_blank
end
