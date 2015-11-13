class User < ActiveRecord::Base
  
  extend FriendlyId

  include AddressableConcern

  friendly_id :name, use: :slugged
  
  rolify

  devise  :confirmable, :database_authenticatable, :invitable, :lockable, 
          :omniauthable, :recoverable, :registerable, :rememberable, 
          :trackable, :validatable  # :timeoutable

  has_many :articles, foreign_key: "author_id"
  has_many :identities, as: :identifiable
  has_many :positions    
  has_many :photos, foreign_key: "photographer_id"
  has_many :comments, foreign_key: "commenter_id"

  has_one :avatar, class_name: "Photo", as: :photographable    
end
