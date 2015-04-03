class User < ActiveRecord::Base
  has_many :players
  has_many :games, :through => :players

  has_secure_password
  validates :email, presence: true
end
