class Studio < ApplicationRecord
  has_many :users
  has_many :courses
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :reviews, through: :courses
  
  CATEGORY = Studio.select(:category).map(&:category).uniq.reject(&:blank?)
  LOCATION = Studio.select(:address).map(&:address).uniq.reject(&:blank?)
end
