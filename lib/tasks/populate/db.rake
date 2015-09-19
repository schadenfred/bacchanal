Dir[Rails.root.join("lib/tasks/populate/support/*.rb")].each {|f| require f}

require 'faker/stoked'
require 'faker/bloocher'

include RakeColorizer 
include RakePrettifier


# rake db:populate:development = /development + /common
# rake db:populate:staging = /staging + /common
# rake db:populate:production = /production + /common
# rake db:populate:common = objects required in all environments