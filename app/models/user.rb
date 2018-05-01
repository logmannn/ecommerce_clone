class User < ApplicationRecord
  # has_one :account

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         after_create :create_account

         private

         def create_account
           @user = User.last
           account = Account.new
           account.user_id = @user.id
           account.save
         end         
end
