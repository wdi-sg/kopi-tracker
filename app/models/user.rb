class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_and_belongs_to_many :kopis
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end