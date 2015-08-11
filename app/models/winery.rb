class Winery < Producer

  has_many :wines

  def vintage
    properties && properties["vintage"]
  end
  
  def vintage=(value)
    self.properties = (properties || {}).merge("vintage" => value)
  end
end
