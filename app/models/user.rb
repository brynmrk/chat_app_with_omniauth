class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  devise :omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :twitter]
  
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  
  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_create do
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name
      end
    end
  end
end
