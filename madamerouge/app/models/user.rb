class User < ApplicationRecord
  has_many :recipes

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  vaildates :password, presence: true
end
