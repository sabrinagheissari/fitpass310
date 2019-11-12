class Session < ApplicationRecord
  belongs_to :studio
  has_many :bookings, dependent: :destroy
end
