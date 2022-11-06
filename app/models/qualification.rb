class Qualification < ApplicationRecord
  validates :name, presence: true
  has_many :credentials
  has_many :users, through: :credentials
  has_many :signups
  has_many :shifts, through: :signups

  accepts_nested_attributes_for :credentials, allow_destroy: true

end
