module RSpec
  module StickySeed
    def self.any_failures?
      examples = RSpec.world.filtered_examples.values.flatten
      examples.any?(&:exception)
    end

    def self.write_seed
      return if any_failures?
      File.write(".rspec-seed","#{RSpec.configuration.seed+1}\n")
    end
  end
end
