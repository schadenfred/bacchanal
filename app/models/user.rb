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
  validates_associated :plan

  has_many :articles, foreign_key: "author_id"
  has_many :comments, foreign_key: "commenter_id"
  has_many :invitations, class_name: self.to_s, as: :invited_by
  has_many :photographed, foreign_key: "photographer_id", class_name: "Photo"
  has_many :positions
  has_many :reviews, foreign_key: :reviewer_id
  has_many :wishes

  has_one :avatar, as: :photographable, class_name: "Photo"

  after_initialize :set_default_role, :if => :new_record?
  after_initialize :set_default_plan, :if => :new_record?
  # after_create :sign_up_for_mailing_list

  def set_default_role
    self.add_role :user unless self.has_any_role?
  end

  def set_default_plan
    self.plan ||= Plan.last
  end

  def first_name
    name.present? ? name.split(" ").first : name_from_email
  end

  def name_from_email
    localpart.split(/[_.]/).first.capitalize
  end

  def localpart
    email.split("@").first
  end

  def sign_up_for_mailing_list
    MailingListSignupJob.perform_later(self)
  end

  def subscribe
    mailchimp = Gibbon::Request.new(api_key: Rails.application.secrets.mailchimp_api_key)
    list_id = Rails.application.secrets.mailchimp_list_id
    result = mailchimp.lists(list_id).members.create(
      body: {
        email_address: self.email,
        status: 'subscribed'
    })
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
  end
end
