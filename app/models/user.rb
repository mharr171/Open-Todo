class User < ApplicationRecord
  validates :email, uniqueness: true, presence: { message: "is required"}
  validates :password, presence: { message: "is required"}
  validates :first_name, presence: { message: "is required"}
  validates :last_name, presence: { message: "is required"}

  has_many :lists, dependent: :destroy
  has_many :items, through: :lists
end
