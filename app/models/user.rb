class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :hearts, dependent: :destroy
  has_many :messages
  has_many :activities
  has_many :reviews

  # creates a new heart row with post_id and user_id
  def heart!(post)
    self.hearts.create!(post_id: post.id)
  end

# destroys a heart with matching post_id and user_id
  def unheart!(post)
    heart = self.hearts.find_by_post_id(post.id)
    heart.destroy!
  end

# returns true of false if a post is hearted by user
  def heart?(post)
    self.hearts.find_by_post_id(post.id)
  end

end
