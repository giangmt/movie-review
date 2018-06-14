class User < ApplicationRecord
  has_many :interactives
  has_many :comments
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :github]

  class << self
    def from_omniauth auth
      auth_provider = auth.provider
      auth_uid = auth.uid
      auth_info = auth.info

      where(provider: auth_provider, uid: auth_uid).first_or_create do |user|
        user.uid = auth_uid
        user.provider = auth_provider
        user.email = auth_info.email
        user.password = Devise.friendly_token[Settings.min_password_length,
          Settings.max_password_length]
      end
    end
  
    def new_with_session params, session
      super.tap do |user|
        facebook_data = session["devise.facebook_data"]
        github_data = session["devise.github_data"]

        if data = facebook_data || github_data
          user.email = data["email"] if user.email.blank?
        end
      end
    end
  end
end
