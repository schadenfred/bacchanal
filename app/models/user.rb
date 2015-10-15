class User < ActiveRecord::Base
  
  extend FriendlyId

  friendly_id :name, use: :slugged
  
  rolify

  ## devise modules to be added as necessary:
  # :timeoutable
  
  devise  :confirmable, :database_authenticatable, :invitable, :lockable, 
          :omniauthable, :recoverable, :registerable, :rememberable, 
          :trackable, :validatable

  has_many :articles, foreign_key: "author_id"
  has_many :identities 
  has_many :positions    
  has_many :photos, foreign_key: "photographer_id"
  has_many :comments, foreign_key: "commenter_id"

  has_one :avatar, as: :photographable    
end
