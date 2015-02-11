require 'rspec/sticky_seed/version'
require 'rspec/sticky_seed/read_seed'
require 'rspec/sticky_seed/write_seed'

RSpec::StickySeed.read_seed

RSpec.configuration.after(:suite) { RSpec::StickySeed.write_seed }
