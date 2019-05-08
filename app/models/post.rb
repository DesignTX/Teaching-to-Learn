# frozen_string_literal: true

class Post < ApplicationRecord
  # Validations

  # Associations 
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_many :comments, dependent: :destroy

  # Operations
  before_save :set_coords
  private

  # Function for this model that converts the inputed location from an address to latititude and longitude to then be used by the google API in order to make a marker on the posts page
  def set_coords
  
    results = Geocoder.search(self.address)
    location = results.first.coordinates  # grabbing the first set of lat long
    self.longitude = location[1]
    self.latitude = location[0] # setting for post
  end
end
