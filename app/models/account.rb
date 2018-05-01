class Account < ApplicationRecord
  has_one :user  
  has_many :orders
  # belongs_to :user
  # , index: { unique: true }, foreign_key: true
end
