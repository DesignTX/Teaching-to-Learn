# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_many :comments, dependent: :destroy
  # dependent: :destroy means the comments related
  # to the specific post in mention get deleted if the post does.
end
