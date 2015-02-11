module RSpec
  module StickySeed
    def self.read_seed
      seed = File.read(".rspec-seed").to_i rescue 0
      RSpec.configuration.seed = seed
      srand seed+1
    end
  end
end
