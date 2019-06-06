class Activity < ApplicationRecord
  belongs_to :user
  has_many :messages

  mount_uploader :photo, PhotoUploader
end
