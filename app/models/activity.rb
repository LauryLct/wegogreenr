class Activity < ApplicationRecord

  CATEGORIES = [
    {
      image: 'alimentation',
      label: 'Alimentation',
      slug: 'alimentation'
    },
    {
      image: 'DIY',
      label: 'DIY',
      slug: 'DIY'
    },
    {
      image: 'restaurant',
      label: 'Restaurant',
      slug: 'restaurant'
    },
    {
      image: 'shopping',
      label: 'Shop',
      slug: 'shopping'
    },
    {
      image: 'event',
      label: 'Event',
      slug: 'event'
    },
  ]
  # Activity::CATEGORIES.map {|c| c[:label] }
  belongs_to :user
  geocoded_by :address
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES.map {|c| c[:label] } }

  include PgSearch
  pg_search_scope :global_search,
    against: [ :category, :name ],
    using: {
      tsearch: { prefix: true }
    }

  def address
    [street, zipcode, city].compact.join(', ')
  end



  mount_uploader :photo, PhotoUploader
  after_validation :geocode
end
