class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates :rate, inclusion: { in: [1, 2, 3, 4, 5] }
end
