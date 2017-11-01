class AppUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, request_keys: [:subdomain]

  def self.find_for_authentication(warden_conditions)
    app = App.find_by(subdomain: warden_conditions[:subdomain])
    where(email: warden_conditions[:email], app_id: app.id).first
  end
end
