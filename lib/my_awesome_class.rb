# /lib/my_class.rb
class RefererUrlParser
  def self.get_parents(url)
    path = URI(url).path.split("/")

    { "parent_type" => path[1], 
      "parent_id" => path[2],
      "parent_resource_type" => path[3],
      "parent_resource_id" => path[4] }
  end
end