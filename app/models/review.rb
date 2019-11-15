class Review < ApplicationRecord
  belongs_to :course
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: {only_integer: true}
end
