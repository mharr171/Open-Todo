class List < ApplicationRecord
  validates :title, presence: { message: "is required"}
  validates :private, presence: { message: "is required"}
  belongs_to :user
  has_many :items
end
