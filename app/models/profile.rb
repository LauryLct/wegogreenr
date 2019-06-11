class Profile < ApplicationRecord
  belongs_to :user
  validates :nickname, presence: true, uniqueness: true, length: { minimum: 3 }

  mount_uploader :photo, PhotoUploader
end
