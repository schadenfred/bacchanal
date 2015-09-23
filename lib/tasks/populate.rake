namespace 'db' do 

  namespace 'populate' do
    
    def populators(environment_path)
      populators = []
      populator_paths = Dir.glob(environment_path + "*.populator.rb")
      populator_paths.each do |populator_path|
        populators << populator_path.split("/").last.split(".").first
      end
      populators
    end

    def ordered_populators(environment_path)
      dependency_hash = TsortableHash[]

      
      pops = populators(environment_path) 
      pops.each do |populator|
        klass = populator.classify.constantize
        parents = []
        klass.reflect_on_all_associations(:belongs_to).each do |parent|
          unless parent.options[:polymorphic]
            parents << parent.name
            end 
          end
        dependency_hash[populator.singularize.to_sym] = parents
      end
      dependency_hash.tsort
    end
    
    environment_paths = Dir.glob("lib/tasks/populate/*/").split("/").last
    environment_paths.each do |environment_path|
      environment = environment_path.split("/").last
      unless ["support", "common"].include? environment
        namespace environment.to_sym do
          
          populators(environment_path).each do |populator|

            desc "Populate #{environment} db with #{populator} populator"
            task populator => :environment do 
              populator_file = File.read("lib/tasks/populate/#{environment}/#{populator}.populator.rb")
              eval(populator_file)
            end
          end
        end
      
        desc "Populate #{environment} db"

        task environment.to_sym => :environment do 
          Rake::Task["db:drop"].invoke
          Rake::Task["db:create"].invoke
          Rake::Task["db:migrate"].invoke
          
          ordered_populators(environment_path).each do |populator|
            Rake::Task["db:populate:#{environment}:#{populator.to_s.pluralize}"].invoke
          end
        end
      end
    end
  end
end 


    
#     def base_path
#       "lib/tasks/populate"

#     end

#     def environment_paths
#       environment_paths = Dir.glob("#{base_path}/*/").split("/").last
#     end

#     environment_paths.each do |environment_path|
#       environment = environment_path.split("/").last
#       unless ["support", "common"].include? environment

#         namespace environment.to_sym do 
#           env_path = "#{base_path}/#{environment.to_s}"
#           @populators = []
#           Dir.glob(env_path + "/*.populator.rb").each do |populator_path|
#             @populators << populator_path.split("/").last.split(".").first
#           end
#           @populators.each do |populator|
#             desc "populates #{environment} db with #{populator} populator"
#             task populator do 
#               populator_file = File.read(base_path + "/" + environment + "/" + populator + ".populator.rb")
#               eval(populator_file)
#             end
#           end
#         end


#         desc "populates #{environment} db with all populators"
#         task environment do 
#           Rake::Task["db:drop"].invoke
#           Rake::Task["db:create"].invoke
#           Rake::Task["db:migrate"].invoke

        
#           dependency_hash = TsortableHash[
#           ]

#           @populators.each do |populator|
#             # klass = populator.classify.constantize

#             parents = []
#             Rails.application.eager_load!
#             populator.classify.constantize.reflect_on_all_associations(:belongs_to).each do |parent|
#               unless parent.options[:polymorphic]
#                 parents << parent.name
#                 end 
#             end
#             dependency_hash[populator.singularize.to_sym] = parents
#           end
          

#           ordered_populators = dependency_hash.tsort
#           ordered_populators.each do |populator|
          
#             Rake::Task["db:populate:#{environment}:#{populator.to_s.pluralize}"].invoke            
#           end
#         end
#       end
#     end
#   end
# end

        
#           dependency_hash[p] = populator_parents(p)
#           eval(File.read(base_path + "/" + populator + ".populator.rb"))
#           populators << populator_path.split("/").last.split(".").first
#           task.invoke
#         dependency_hash = TsortableHash[]
#         dependency_hash.tsort
#         desc "populate #{populator} in #{environment} db"
#         Dir.glob(@base_path + "/*.populator.rb").each do |populator_path|
#         end
#         end
#         end
#         end
#         environments << directory.to_sym
#         klass.to_s.classify.constantize.reflect_on_all_associations(:belongs_to).map(&:name)
#         populators
#         populators = []
#         populators.each do |p|
#         Rake::Task["db:create"].invoke
#         Rake::Task["db:drop"].invoke
#         Rake::Task["db:migrate"].invoke
#         task "#{populator}" => :environment do
#         x.tasks.each do |task|
#       # create rake task for each populator
#       # for each sorted populator_klass, create rake task
#       # run code in file
#       # sort populator_klasses
#       @base_path = "lib/tasks/populate/#{environment.to_s}"
#       byebug
#       def populator_parents(klass) 
#       def populators
#       def sorted_populators
#       desc "populate #{environment} db"       
#       directory = populate_directory_path.split("/").last
#       end
#       end
#       end
#       end
#       end
#       end 
#       end 
#       populators.each do |populator|
#       Rake.application.in_namespace("db:populate:#{environment}") do |x|
#       unless ["support", "common"].include? directory
#       unless Rails.env.production?
#     Dir.glob('lib/tasks/populate/*/').each do |populate_directory_path|
#     end
#     end
#     end
#     environments
#     environments = []
#     models = ActiveRecord::Base.descendants
#     Rails.application.eager_load!
#     task environment do 
#   @wines_fruit_lots = 20
#   def populatable_environments
#   def population_order 
#   desc "Populates the development database"
#   end
#   end
#   end 
#   populatable_environments.each do |environment|
# #             puts green("#{count} count of (#{@objects.to_i}) matches objects in db")
# #             puts green("#{database_table} table has (#{objects_in_db}) objects")
# #             puts red("#{database_table} table has no objects")
# #             puts yellow("#{count} count of (#{@objects.to_i}) does not match objects in db (#{objects_in_db})")
# #           else
# #           else
# #           end
# #           end
# #           if objects_in_db == @objects
# #           if objects_in_db > 0
# #         @objects = eval(count)
# #         count = "@#{task.name.split(":").last}"
# #         database_table = task.name.split(":").last.classify
# #         end
# #         end
# #         if @objects.nil?
# #         objects_in_db = task.name.split(":").last.classify.constantize.count
# #         unless @objects.nil?
# #       end
# #       puts "#{green("  -->")} satisfying #{model.downcase} dependency"
# #       Rake::Task["db:development:create:#{model.underscore.pluralize}"].invoke
# #       x.tasks.each do |task|
# #     actual_count = model.classify.constantize.count
# #     desired_count = eval("@" + model.pluralize) 
# #     end
# #     end
# #     Rake.application.in_namespace('db:populate:create') do |x|
# #     unless desired_count.nil? || actual_count >= desired_count
# #   dependencies.each do |model|
# #   desc "Verifies object counts set in populate"
# #   end
# #   end
# #   task verify_object_counts: :environment do 
# # def satisfy_dependencies(dependencies)
# # end
# # end
# # rake db:populate:common = objects required in all environments
# # rake db:populate:development = /development + /common
# # rake db:populate:production = /production + /common
# # rake db:populate:staging = /staging + /common
# end
# namespace 'db:populate' do 