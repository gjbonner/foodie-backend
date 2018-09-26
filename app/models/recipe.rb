class Recipe < ApplicationRecord
  has_many :likes, dependent: :destroy
end
