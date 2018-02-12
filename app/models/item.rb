class Item < ApplicationRecord
  validates :title, presence: { message: "required"}
  belongs_to :list
end
