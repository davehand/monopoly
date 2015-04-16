# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :players
  has_many :games, :through => :players

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
