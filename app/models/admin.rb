class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :jitikais, dependent: :destroy
  has_many :dusts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :event_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
