class Account < ApplicationRecord
  has_many :orders
  belongs_to :user
  # , index: { unique: true }, foreign_key: true
end
