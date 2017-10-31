class App < ApplicationRecord
  has_many :app_users
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
end
