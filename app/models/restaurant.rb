class Restaurant < ApplicationRecord
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  validates :name, presence: true
  validates :address, presence: true

  has_many :reviews, dependent: :destroy
end
