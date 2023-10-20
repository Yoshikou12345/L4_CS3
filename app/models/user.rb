class User < ApplicationRecord
  has_secure_password

  validates :uid, presence: true, uniqueness: true
end
