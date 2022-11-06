class User < ApplicationRecord
  has_many :credentials
  has_many :qualifications, through: :credentials
  has_many :signups
  has_many :shifts, through: :signups

  def proper_name
    "#{last_name}, #{first_name}"
  end
end
