class RakeTaskTestCase < ActiveSupport::TestCase
  before do
    require 'rake'

    Rake::Task.define_task :environment
    load rake_task_load_path
  end

private

  def subject
    Rake::Task[task_name]
  end

  def rake_task_load_path
    "#{_tasks_base_path}/populate.rake"
  end

  def task_name
    self.class.name.split("TaskTest::").last.gsub("::", ":")
    # _relative_task_file_path.sub('/', ':').sub(/\.rake$/, '')
  end

  def _relative_task_file_path
    self.class.name.split("#").last.split(":").last + ".rake"
  end

  def _tasks_base_path
    File.expand_path("#{Rails.root}/lib/tasks")
  end
end

class MiniTest::Spec
  register_spec_type(/.*TaskTest/, RakeTaskTestCase)
end



# class RakeTaskTestCase < ActiveSupport::TestCase
#   before do
#     require 'rake'
#     Rake::Task.define_task :environment
#     load rake_task_load_path
#   end

# private

#   def subject
#     Rake::Task[task_name]
#   end

#   def rake_task_load_path
#     "#{_tasks_base_path}/#{_relative_task_file_path}"
#   end

#   def task_name
#     _relative_task_file_path.sub('/', ':').sub(/\.rake$/, '')
#   end

#   def _relative_task_file_path
#     self.class.name.sub(/TaskTest::/, '').sub("::", ":")
#     # "#{self.class.name.sub(/TaskTest$/, '').underscore}.rake"
#   end

#   def _tasks_base_path
#     File.expand_path("#{Rails.root}/lib/tasks")
#   end
# end

# class MiniTest::Spec
#   register_spec_type(/.*TaskTest/, RakeTaskTestCase)
# end