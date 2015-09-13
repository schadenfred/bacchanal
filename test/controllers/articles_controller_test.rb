require "test_helper"

describe ArticlesController do

  Given(:user)    { FactoryGirl.create(:user) }
  Given(:article) { FactoryGirl.create(:article) }
  Given(:winery)  { FactoryGirl.create(:winery) }

  context "authenticated user" do 

    Given { sign_in user }

    describe "#new" do 

      Given { get :new, winery_id: winery.id }
      Then  { assert_response 200 }
      And   { assert_not_nil assigns :bloggable }    
      And   { assert_not_nil assigns :article }    
    end
    
    describe "#create" do 

      Given(:make_request) { post :create, winery_id: winery.id, article: { title: "Sweet title", content: "sweet content" }}
      Then do
        assert_difference("Article.count") do
          make_request
        end
        assert_redirected_to winery_articles_path(winery)
      end
    end

    describe "#update" do 

      When { put :update, id: article, winery_id: winery.id, article: { title: "new title" } }
      Then { assert_equal article.reload.title, "new title" }
    end

    describe "#destroy" do 
      Given { article }
      Then do 
        assert_difference("Article.count", -1) do
          delete :destroy, id: article, winery_id: winery.id
        end
      end
    end
  end
end
