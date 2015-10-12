class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    @user == record.commenter
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

end
