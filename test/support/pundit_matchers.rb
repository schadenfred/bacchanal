def assert_permit(user, record, action)
  msg = "User #{user.inspect} should be permitted to #{action} #{record}, but isn't permitted"
  assert permit(user, record, action), msg
end

def refute_permit(user, record, action)
  msg = "User #{user.inspect} should NOT be permitted to #{action} #{record}, but is permitted"
  refute permit(user, record, action), msg
end

def permit(user, record, action)
  subject = self.to_s.split("::").first.constantize
  subject.new(user, record).public_send("#{action.to_s}?")
end