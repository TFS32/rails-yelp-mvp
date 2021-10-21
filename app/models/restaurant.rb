class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, acceptance: { accept: %w[chinese italian french japanese belgian] }
end
