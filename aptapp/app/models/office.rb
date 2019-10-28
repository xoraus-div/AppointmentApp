class Office < ApplicationRecord
  belongs_to :physician, optional: true
end
