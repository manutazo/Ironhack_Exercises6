class Barbecue < ActiveRecord::Base
  has_many :conects
  has_many :users, :through => :conects

  validates :title, presence: true
  validates :venue, presence: true
  validates :date, presence: true
end
