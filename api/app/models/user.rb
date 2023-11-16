class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :pass, presence: true
end
