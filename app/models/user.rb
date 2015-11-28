class User < ActiveRecord::Base

  include AddressableConcern
  include IdentifiableConcern

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  rolify

  devise  :confirmable, :database_authenticatable, :invitable, :lockable, 
          :omniauthable, :recoverable, :registerable, :rememberable, 
          :trackable, :validatable  # :timeoutable

  has_many :articles, foreign_key: "author_id"
  has_many :positions    
  has_many :photographed, foreign_key: "photographer_id", class_name: "Photo"
  has_many :comments, foreign_key: "commenter_id"

  has_one :avatar, as: :photographable, class_name: "Photo"

  # def avatar
  #   photos.find_by(name: "avatar").first
  # end
end
