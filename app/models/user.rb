class User < ApplicationRecord
  has_secured_password

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minium: 8}
end
