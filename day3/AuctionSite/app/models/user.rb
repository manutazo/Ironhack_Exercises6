class User < ActiveRecord::Base
	has_many :products
	validates :email, presence: true, uniqueness: true
	has_many :offers
  validates :name, presence: true
end
