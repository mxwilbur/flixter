class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :rememberable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
end
