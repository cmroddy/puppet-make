require 'spec_helper_acceptance'

describe 'make' do
  context 'with defaults' do
    let(:pp) do
      'include make'
    end

    it 'works idempotently with no errors' do
      apply_manifest(pp, catch_failures: true)
      apply_manifest(pp, catch_changes: true)
    end

    describe package('make') do
      it { is_expected.to be_installed }
    end
  end
end
