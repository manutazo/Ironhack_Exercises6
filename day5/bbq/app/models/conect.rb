class Conect < ActiveRecord::Base
  belongs_to :barbecue
  belongs_to :user
end
