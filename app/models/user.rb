class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :selected_users
  has_many :matchings
  has_many :comments
  has_many :users_rooms
  has_many :rooms, through: :users_rooms

  with_options presence:true do
    validates :nicknme
    validates :birthday
    validates :email, format:{ with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password,length{minimum:6},format:{with:  /\A(?=.*?[a-z])[a-z\d]{6,32}+\z/}

  with_options format: { with: /\A[ぁ-んァ-ン一-龥]/} do
    validates :family_name
   validates :first_name
  end

  with_opyions format:{ with: /\A[ァ-ヶー－]+\z/} do
   validates :family_name_kana
   validates :first_name_kana
  end
  end
end