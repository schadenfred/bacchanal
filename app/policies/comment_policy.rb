class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    create?
  end

  def update?
    if @user
      @user == record.commenter or @user.has_role? :admin
    end
  end

  def edit?
    update?
  end

  def create?
    @user
  end

  def destroy?
    update?
  end

end
