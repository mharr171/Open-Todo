class List < ApplicationRecord
  validates :title, presence: { message: "is required"}
  validates :private, inclusion: { in: [ true, false ] }
  belongs_to :user
  has_many :items, dependent: :destroy
end
