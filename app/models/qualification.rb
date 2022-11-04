class Qualification < ApplicationRecord
  validates :name, presence: true
  has_many :users, through: :credentials
  has_many :shifts
end
