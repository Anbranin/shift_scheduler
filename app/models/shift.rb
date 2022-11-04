class Shift < ApplicationRecord
  validates :name, presence: true
  belongs_to :qualification
  has_many :signups
  has_many :users, through: :signups

  def qualification_name
    qualification.name
  end
end
