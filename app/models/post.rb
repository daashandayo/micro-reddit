# frozen_string_literal: true

# Post Data Model
class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments
end
