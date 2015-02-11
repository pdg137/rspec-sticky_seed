require 'rspec'
require 'fakefs/spec_helpers'
require 'rspec/sticky_seed/write_seed'

describe 'RSpec::StickySeed.reload' do
  include FakeFS::SpecHelpers

  before do
    RSpec.configuration.seed = 37
    allow(RSpec::StickySeed).to receive(:any_failures?) { failures }
  end

  context 'no failures' do
    let(:failures) { false }

    specify do
      RSpec::StickySeed.write_seed
      expect(File.read('.rspec-seed').to_i).to eq 38
    end
  end

  context 'failures' do
    let(:failures) { true }

    specify do
      RSpec::StickySeed.write_seed
      expect(File.exists?('.rspec-seed')).to eq false
    end
  end
end
