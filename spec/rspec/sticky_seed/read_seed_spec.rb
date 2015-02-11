require 'rspec'
require 'fakefs/spec_helpers'
require 'rspec/sticky_seed/read_seed'

describe 'RSpec::StickySeed.reload' do
  include FakeFS::SpecHelpers

  it 'uses the random seed 0 for specs' do
    RSpec::StickySeed.read_seed
    expect(RSpec.configuration.seed).to eq 0
  end

  it 'uses the random seed 1 for srand' do
    RSpec::StickySeed.read_seed
    expect(srand).to eq 1
  end

  context 'seed 37 stored in .rspec-seed' do
    before do
      File.write('.rspec-seed', '37')
    end

    it 'uses the random seed 37 for specs' do
      RSpec::StickySeed.read_seed
      expect(RSpec.configuration.seed).to eq 37
    end

    it 'uses the random seed 38 for srand' do
      RSpec::StickySeed.read_seed
      expect(srand).to eq 38
    end
  end
end
