class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: false
  validates :content, presence: true, length: { maximum: 140 }
end
