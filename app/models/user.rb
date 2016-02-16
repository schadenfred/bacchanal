class User < ActiveRecord::Base

  include AddressableConcern
  include IdentifiableConcern

  extend FriendlyId
  friendly_id :name, use: :slugged

  rolify

  devise  :confirmable, :database_authenticatable, :invitable, :lockable,
          :omniauthable, :recoverable, :registerable, :rememberable,
          :trackable, :validatable  # :timeoutable

  belongs_to :plan

  has_many :articles, foreign_key: "author_id"
  has_many :comments, foreign_key: "commenter_id"
  has_many :invitations, class_name: self.to_s, as: :invited_by
  has_many :photographed, foreign_key: "photographer_id", class_name: "Photo"
  has_many :positions
  has_many :reviews, foreign_key: :reviewer_id
  has_many :wishes

  has_one :avatar, as: :photographable, class_name: "Photo"

  def first_name
    name.present? ? name.split(" ").first : name_from_email
  end

  def name_from_email
    localpart.split(/[_.]/).first.capitalize
  end

  def localpart
    email.split("@").first
  end
end
