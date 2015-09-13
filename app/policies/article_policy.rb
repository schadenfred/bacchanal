class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    record.published? || user == record.author
  end

  def update?
    user == record.author
  end

  def destroy?
    user == record.author
  end

  def publish?
    user == record.author
  end

  def archive?
    user == record.author
  end
end
