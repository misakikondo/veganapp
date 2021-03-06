class Recipe < ApplicationRecord
  belongs_to :level
  belongs_to :cookingtime
  belongs_to :user
  has_many   :comments, dependent: :destroy
  has_one_attached :image
  has_many   :likes, dependent: :destroy
  has_many   :liked_users, through: :likes, source: :user

  validates :image, presence: true
  validates :explains, presence: true, length: { maximum: 1000 }
  validates :recipes_name, presence: true, length: { maximum: 40 }
  validates :level_id, presence: true
  validates :cookingtime_id, presence: true
end
