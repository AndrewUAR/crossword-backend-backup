class User < ApplicationRecord
  has_secure_password
  has_many :games
  has_many :puzzles, through: :games

  validates_presence_of :username
  validates_uniqueness_of :username


end
