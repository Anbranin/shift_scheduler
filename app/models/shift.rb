class Shift < ApplicationRecord
  validates :name, presence: true
  has_many :signups, dependent: :destroy
  has_many :users, through: :signups
  has_many :qualifications, through: :signups

  accepts_nested_attributes_for :signups, allow_destroy: true

  def qualification_name
    qualification.name
  end

  def times
    "#{start_time.strftime('%H:%M')} - #{end_time.strftime('%H:%M')}"
  end
end
