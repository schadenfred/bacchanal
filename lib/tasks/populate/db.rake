Dir[Rails.root.join("lib/tasks/populate/support/*.rb")].each {|f| require f}

require 'faker/stoked'
require 'faker/bloocher'
require 'tsortable'

include RakeColorizer 
include RakePrettifier

# task aliases

desc "Alias for db:populate:development"
task "populate" =>  ["db:populate:development"]




