require 'test_helper'

class UserPresenterTest < ActionView::TestCase

  setup do 
    @user = Minitest::Mock.new
    @user.expect(:comments, ["comment1", "comment2"] )
    @user.expect(:positions, ["position1", "position2"] )
    @user.expect(:articles, ["article1", "article2"] )
    @user.expect(:invitation_limit, 5)
    @user.expect(:invitations, ["invite1", "invite2"] )
  end

  let(:presenter) { UserPresenter.new(@user, view) }
  
  specify ":comments" do
    presenter.comments.count.must_equal 2
  end

  specify ":position" do
    presenter.positions.count.must_equal 2
  end

  specify ":articles_written" do
    presenter.articles_written.count.must_equal 2
  end
end