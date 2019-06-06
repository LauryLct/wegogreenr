class Activity < ApplicationRecord
  belongs_to :user
  has_many :messages
  geocoded_by :address

  def address
    [street, zipcode, city].compact.join(', ')
  end
  
  mount_uploader :photo, PhotoUploader
  after_validation :geocode

end
