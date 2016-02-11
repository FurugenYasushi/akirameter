class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :twitter_user
  validates :user_id, presence: false
  validates :content, presence: true, length: { maximum: 1000 }
end
