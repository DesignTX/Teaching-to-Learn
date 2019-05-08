# frozen_string_literal: true

class Comment < ApplicationRecord
  # Associations 
  belongs_to :post
  belongs_to :user
end
