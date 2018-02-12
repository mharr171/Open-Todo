class List < ApplicationRecord
  validates :title, presence: { message: "required"}
  belongs_to :user
  has_many :items
end
