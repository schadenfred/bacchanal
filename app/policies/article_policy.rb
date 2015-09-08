class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    record.published? || record.author == user
  end

  def update?
    record.author == user
  end

  def publish?
    record.author == user
  end

  def archive?
    record.author == user
  end

  def destroy?
    record.author == user
  end
end
