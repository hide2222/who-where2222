class Selecteduser < ApplicationRecord
 
  belongs_to :user
  has_one_attached :image
  has_one :maching
  has_one :profile
  has_many :messages
  validates :user_id, :logic_result_id, presence: true
  validates :logic_result_id, numericality: { otherthan: 1 }
end
