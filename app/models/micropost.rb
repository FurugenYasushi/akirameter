class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :twitter_user
  validates :user_id, presence: false
  validates :content, presence: true, length: { maximum: 1000 }
  validates :age, presence: true
  validates :seibetsu, presence: true
  validates :genre, presence: true
  validates :past_time, presence: true
end
