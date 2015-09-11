class User < ActiveRecord::Base
  rolify

  devise :confirmable, :database_authenticatable, :invitable, :lockable, 
    :timeoutable, :omniauthable, :recoverable, :registerable, :rememberable, 
    :trackable, :validatable

  has_many :articles 

  has_one :avatar, class_name: "Photo"      
end
