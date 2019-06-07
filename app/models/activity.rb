class Activity < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["Shop Eco-friendly", "Alimentation", "Restaurant Bio", "Atelier", "Event"] }
  validates :rate, inclusion: { in: [1, 2, 3, 4, 5] }

  def address
    [street, zipcode, city].compact.join(', ')
  end


  
  mount_uploader :photo, PhotoUploader
  after_validation :geocode
end
