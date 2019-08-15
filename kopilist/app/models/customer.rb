class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :kopis
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end