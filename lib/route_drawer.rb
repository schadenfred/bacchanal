def draw(dir=nil, routes_name)
  routes_file_path = Rails.root.join("config/routes/#{dir}#{routes_name}.rb")
  namespaced_routes_file_path = Rails.root.join("config/routes/#{dir}/#{routes_name}.rb")
  instance_eval(File.read(dir.nil? ? routes_file_path : namespaced_routes_file_path))
end