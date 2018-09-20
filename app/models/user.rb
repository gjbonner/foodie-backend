class User < ApplicationRecord
  has_secure_password
  has_many :likes
  has_many :recipes, through: :likes

  validates :username, uniqueness: { case_sensitive: false }
end
