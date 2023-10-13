class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, :name, :address, presence: true
  TYPE = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: TYPE }
end
