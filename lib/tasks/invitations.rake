namespace :invitations do
  desc 'Give each user a new invitation until limit is reached'
  task distribute: :environment do
    users = User.all
    users.each do |u|
      if u.invitation_limit < Devise.invitation_limit
        u.increment!(:invitation_limit)
      end
    end
  end
end