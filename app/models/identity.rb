class Identity < ActiveRecord::Base
  belongs_to :user

#   # validates :uid, :provider, presence: true

#   # validates_uniqueness_of :uid, :scope => :provider

#   # def self.find_for_oauth(auth)
#   #   find_or_create_by(uid: auth.uid, provider: auth.provider)
#   # end

#   def self.create_with_omniauth(auth)
#     create(uid: auth['uid'], provider: auth['provider'])
#   end

#   def self.find_with_omniauth(auth)
#     find_by(uid: auth['uid'], provider: auth['provider'])
#   end

end
