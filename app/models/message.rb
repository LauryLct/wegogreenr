class Message < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :content, presence: true
  after_create :broadcast_message

  def from?(some_user)
    user == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("activity_#{self.activity.id}", {
        type: 'message',
        data: {
          message: self,
          sender: self.user.profile.nickname
        }
    })
  end
end
