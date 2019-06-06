class Activity < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many :messages, dependent: :destroy


  def address
    [street, zipcode, city].compact.join(', ')
  end
  
  mount_uploader :photo, PhotoUploader
  after_validation :geocode

end
