class Review < ApplicationRecord
  belongs_to :activity
  validates :rate, inclusion: { in: [1, 2, 3, 4, 5] }
end
