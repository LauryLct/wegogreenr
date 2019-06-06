class Activity < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  mount_uploader :photo, PhotoUploader
end
