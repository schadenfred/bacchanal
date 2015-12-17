require "test_helper" 

describe "namespaced routes acceptance test" do 

  it "/api/v1/users/1 routes correctly" do 
    assert_routing "/api/v1/users/1", controller: "api/v1/users", action: "show", id: "1"
  end
end