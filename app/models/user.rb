class User < ApplicationRecord
  validates :email, uniqueness: true
  has_many :lists
  has_many :items, through: :lists
end
