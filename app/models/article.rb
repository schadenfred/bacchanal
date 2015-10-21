class Article < ActiveRecord::Base

  include AASM
  
  extend FriendlyId
  
  resourcify

  friendly_id :title, use: :slugged

  acts_as_taggable
  acts_as_taggable_on :categories

  belongs_to :org
  belongs_to :author, class_name: "User", foreign_key: "author_id"

  has_many :comments, as: :commentable, dependent: :destroy

  validates :org, presence: true
  validates :author, presence: true
  validates :title, uniqueness: { scope: :org_id }

  default_scope { order("created_at desc") }

  aasm do
    state :draft, :initial => true
    state :published
    state :archived

    event :publish do
      transitions :from => :draft, :to => :published
    end

    event :archive do
      transitions :from => [:draft, :published], :to => :archived
    end
  end
end
