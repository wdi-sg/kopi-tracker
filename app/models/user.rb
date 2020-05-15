class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :kopi
  has_many :origin
  # has_many :roast
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
