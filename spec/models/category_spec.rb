require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { described_class.new(name: name) }

  describe 'validations' do
    context 'when name is all lowercase letters' do
      let(:name) { 'philosophy' }

      it { is_expected.to be_valid }
    end

    context 'when name includes capital letters' do
      let(:name) { 'Philosophy' }

      it { is_expected.to_not be_valid }
    end

    context 'when name includes numbers' do
      let(:name) { 'philosophy1' }

      it { is_expected.to_not be_valid }
    end

    context 'when name includes spaces' do
      let(:name) { 'computer science' }

      it { is_expected.to be_valid }
    end

    context 'when name is empty' do
      let(:name) { '' }

      it { is_expected.to_not be_valid }
    end
  end
end
