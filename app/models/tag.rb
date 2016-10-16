class Tag < ApplicationRecord
  validates :name, presence: true
  validates :name,
            format: { with: /\A[a-z]+\z/, message: 'only lowercase letters' }

  has_and_belongs_to_many :articles
end
