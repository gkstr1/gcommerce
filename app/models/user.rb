class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :sneakers
  before_save { self.email = email.downcase }
  
  def cart_count
  $redis.scard "cart#{id}"
  end
  
  
end


