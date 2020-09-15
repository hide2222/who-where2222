class Selecteduser < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one :maching
  has_one :profile
  has_many :messages
end
