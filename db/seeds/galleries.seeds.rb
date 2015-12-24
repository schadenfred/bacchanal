after :wineries, :orgs, :users do 

  orgs = Org.all
  orgs.each do |org|

    next if org.default_gallery && org.default_gallery.name == "default"
    gallery = org.galleries.new(
      name: "default",
      properties: {
        order: []
      }
    )
    gallery.save!
  end
end