class Logic1 < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :logic_result
  
  has_one :selecteduser
  validates :logic_result, presence: true
  validates :logic_result_id, numericality: { other_than: 1 }
end
