class Studio < ApplicationRecord
  has_many :users
  has_many :sessions
end
