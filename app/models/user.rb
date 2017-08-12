class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   after_create :update_access_token!
   validates :email, presence: true

   has_many :contacts

   private

   # Sets the token to the id and generated token by devise
   def update_access_token!
     self.access_token = "#{self.id}:#{Devise.friendly_token}"
     save
   end
end
