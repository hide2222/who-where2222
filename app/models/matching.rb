class Matching < ApplicationRecord
  belongs_to :selecteduser
  belongs_to :user
  has_one :room
end
