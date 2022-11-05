class Shift < ApplicationRecord
  validates :name, presence: true
  belongs_to :qualification, optional: true
  has_many :signups
  has_many :users, through: :signups

  def qualification_name
    qualification.name
  end

  def times
    "#{start_time.strftime('%H:%M')} - #{end_time.strftime('%H:%M')}"
  end

  def description
    "Doing something with horses"
  end
end
