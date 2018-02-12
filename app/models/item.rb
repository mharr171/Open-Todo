class Item < ApplicationRecord
  validates :title, presence: { message: "required"}
  validates :completed, inclusion: { in: [ true, false ] }
  belongs_to :list
end
