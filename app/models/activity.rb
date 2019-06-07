class Activity < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["Shop Eco-friendly", "Alimentation", "Restaurant Bio", "Atelier", "Event"] }


  def address
    [street, zipcode, city].compact.join(', ')
  end

  
  mount_uploader :photo, PhotoUploader
  after_validation :geocode
end
