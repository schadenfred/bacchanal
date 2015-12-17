def draw(dir=nil, file_name)
  instance_eval(File.read(Rails.root.join(get_path(dir, file_name))))
end

def get_path(dir=nil, file_name) 
  "config/routes/#{dir ? "#{dir.to_s}/#{file_name}" : "#{file_name}"}.rb"
end