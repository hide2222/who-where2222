class Room < ApplicationRecord
  belongs_to :matching
  belongs_to :user
  belongs_to :selecteduser
  has_many :messages
end
