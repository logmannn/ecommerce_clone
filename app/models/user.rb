class User < ApplicationRecord
  has_one :account

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
