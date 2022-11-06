class User < ApplicationRecord
  has_many :credentials
  has_many :qualifications, through: :credentials
  has_many :signups
  has_many :shifts, through: :signups

  accepts_nested_attributes_for :credentials, allow_destroy: true

  def proper_name
    "#{last_name}, #{first_name}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
