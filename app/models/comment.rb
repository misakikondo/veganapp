class Comment < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  validates :contents, presence: true, length: { maximum: 500 }
end
