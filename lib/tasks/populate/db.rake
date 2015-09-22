Dir[Rails.root.join("lib/tasks/populate/support/*.rb")].each {|f| require f}

require 'faker/stoked'
require 'faker/bloocher'
require 'tsortable'

include RakeColorizer 
include RakePrettifier



