# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_many :comments, dependent: :destroy

  before_save :set_coords
  private

  def set_coords
    results = Geocoder.search(self.address)
    location = results.first.coordinates
    # raise
    self.longitude = location[1]
    self.latitude = location[0]
  end
end
