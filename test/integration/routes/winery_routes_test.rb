require "test_helper" 

describe "producer route acceptance test" do 
  
  resources = %w[producers wineries]
  
  resources.each do |resource|

#     it "GET /#{resource}/1/products/1" do 
# skip
#       assert_generates "/#{resource}/1/products/1", { 
#         controller: 'products', action: 'show', id: '1' 
#       }
#     end

    it "GET /#{resource}/1" do 

      assert_generates "/#{resource}/1", { 
        controller: resource, action: 'show', id: '1' 
      }
    end

    it "" do 

      assert_generates "/#{resource}", {
        controller: resource, action: 'index'
      }

    end
  end
end

#     assert_recognizes(
#       { controller: 'wineries', action: 'show', id: '1' }, 
#       '/wineries/1'
#     )

#     assert_routing(
#       { path: 'producers/1'},
#       { controller: "producers", action: "show", id: "1" }
#     )
#   end
# end

