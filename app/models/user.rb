class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :foundation
  has_many :comments
  has_many :likes
  has_many :liked_comment, :through => :likes, :source => :comments
end
