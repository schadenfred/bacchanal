require "test_helper"

describe ArticlesController do

  Given(:user)    { FactoryGirl.create(:user) }
  Given(:article) { FactoryGirl.create(:article) }
  Given(:winery)  { FactoryGirl.create(:winery) }

  context "authenticated user" do

    Given { sign_in user }

    describe "#new" do

      Given { get "/wineries/#{winery.slug}/articles/new"}

      # Given { get new_org_article_url(winery) }
      Then  { assert_response 200 }
    end

    describe "#show" do

      Given { get "/orgs/#{winery.slug}/articles/#{article.slug}" }
      # org_article_url(winery, article) }
      Then  { assert_response 200 }
    end

    describe "#create" do

    #   Given(:make_request) { post :update, params: {
    #       article: { title: "Sweet title", content: "sweet content" } } }

    #   Then do
    #     assert_difference("Article.count") do
    #       make_request
    #     end
    #     assert_redirected_to winery_articles_path(winery)
    #   end
    end

    # describe "#update" do

    #   Given { put :update, params: { format: article.slug } }
    #   Then { assert_equal article.reload.title, "new title" }
    # end

    describe "#destroy" do
      # Given { article }
      # Then do
      #   assert_difference("Article.count", -1) do
      #     delete "orgs\/#{winery.slug}\/articles/#{article.slug}"          d
      #   end
      # end
    end
  end
end
