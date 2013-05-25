class Orderlist < ActiveRecord::Base
  attr_accessible :count, :hotel, :price, :taste
  belongs_to :user
  validates :user_id, presence: true
  validates :hotel,presence:true
  validates :taste,presence:true
  validates :count,numericality:true
  validates :price,numericality:true
  
end
