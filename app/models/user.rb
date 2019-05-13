# frozen_string_literal: true

# User Data Model
class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts
  has_many :comments
end
