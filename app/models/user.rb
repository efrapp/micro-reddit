class User < ApplicationRecord
  has_many :posts
  has_many :comments
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
    uniqueness: { case_sensitive: false }
  validates :username, presence: true, length: { minimum: 5 },
    uniqueness: { case_sensitives: false }
end