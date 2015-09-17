class User < ActiveRecord::Base
  
  extend FriendlyId

  friendly_id :name, use: :slugged
  
  rolify

  devise :confirmable, :database_authenticatable, :invitable, :lockable, 
    :timeoutable, :omniauthable, :recoverable, :registerable, :rememberable, 
    :trackable, :validatable

  has_many :articles 
  has_many :identities 
  has_many :positions    

  has_one :avatar, as: :photographable    
end
