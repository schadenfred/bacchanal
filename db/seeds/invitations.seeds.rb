after :users do 

  user = User.find_by(email: "fred.schoeneman@bacchan.al")
  contacts = %w[fred.schoeneman@gmail.com getsome@gotten.com]
  contacts.each do |contact|
    User.invite!( { email: contact }, user )
  end
end