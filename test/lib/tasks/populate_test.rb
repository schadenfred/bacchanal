require 'test_helper'

describe "TaskTest" do
  
  describe "db" do 

    describe "populate" do 

      it "must be a task" do 
        subject.class.must_equal Rake::Task
      end

      describe "methods" do 

        it ":environment_paths" do 
          environment_paths.class.must_equal Array
        end
      end

      describe "development" do 

        it "must be a task" do 
          subject.class.must_equal Rake::Task
        end

        describe "addresses" do 

          it "must be a task" do 
            subject.class.must_equal Rake::Task
          end

          it "must be invokeable" do 

            subject.invoke
            Address.count.wont_equal nil
          end
        end
      end
    end
  end
end
