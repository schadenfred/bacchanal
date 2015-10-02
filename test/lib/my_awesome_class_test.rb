require "test_helper" 
require "my_awesome_class"

describe RefererUrlParser do 

  it "should parse a url" do 
    referer_url = 'http://test.com/wineries/bink-wines/articles'
    expected = {"parent_type"=>"wineries", "parent_id"=>"bink-wines", "parent_resource_type"=>"articles", "parent_resource_id"=>nil}
    RefererUrlParser.get_parents(referer_url).must_equal expected

  end

end
