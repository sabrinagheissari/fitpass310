class Studio < ApplicationRecord
  has_many :users
  has_many :courses
  mount_uploader :photo, PhotoUploader
end
