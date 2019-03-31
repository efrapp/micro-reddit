class User < ApplicationRecord
  has_many :posts
  has_many :comments
  
  EMAIL_FORMAT_VALIATION = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false },
                    format: { with: EMAIL_FORMAT_VALIATION }
  validates :username, presence: true, length: { minimum: 5 },
                       uniqueness: { case_sensitives: false }
end
