require 'rspec/sticky_seed/version'
require 'rspec/sticky_seed/read_seed'
require 'rspec/sticky_seed/write_seed'

RSpec::StickySeed.load_seed

after(:suite) { RSpec::StickySeed.write_seed }
