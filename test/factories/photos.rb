FactoryGirl.define do
  
  factory :photo do
    image Rails.root.join("test", "samples", "labels", "wine-label.jpg")
    # image_name "MyString"
    name "MyString"
    caption "MyString"
    photographer
  end

end
