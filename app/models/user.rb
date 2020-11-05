class User < ApplicationRecord
  has_secure_password
  validates_presence_of :password_digest, :age
  validates :username, presence: true, uniqueness: { case_sensitive: true }
end
