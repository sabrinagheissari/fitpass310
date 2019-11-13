class Studio < ApplicationRecord
  has_many :users
  has_many :sessions
  mount_uploader :photo, PhotoUploader
end
