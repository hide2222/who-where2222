class Selecteduser < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Gender
  belongs_to :user
  has_one_attached :image
  has_one :maching
  has_one :profile
  has_many :messages
  validates :user_id, :logic_result_id, :gender_id, presence: true
  validates :gender_id, numericality: { other_than: 1 }
end
