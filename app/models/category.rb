class Category < ApplicationRecord
  validates :name, presence: true
  validates :name,
            format: { with: /\A[a-z]+\z/, message: 'only lowercase letters' }
end
