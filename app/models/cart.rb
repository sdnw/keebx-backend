class Cart < ApplicationRecord
  belongs_to :user
  has_many :items, through: :users
end
