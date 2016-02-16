class Position < ActiveRecord::Base

  belongs_to :user
  belongs_to :org
  belongs_to :positionable, polymorphic: true

  validates :positionable, :user, presence: true

  def org_name
    org.try(:name)
  end

  def org_name=(name)
    self.org = Org.first_or_create(name: name) if name.present?
  end
end
