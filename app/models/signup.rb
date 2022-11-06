class Signup < ApplicationRecord
  belongs_to :shift
  belongs_to :user, optional: true
  belongs_to :qualification, optional: true
end
