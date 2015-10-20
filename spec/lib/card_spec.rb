require 'rspec'
require './lib/card'

describe Card do
  let(:suit) { '♥' }
  let(:value) { 'A' }
  subject { Card.new(suit, value) }

  it 'should be a Card' do
    expect(subject).to be_a(Card)
  end

  describe '.suit' do
    it 'returns the suit' do
      expect(subject.suit).to eq('♥')
    end
  end

  describe '.value' do
    it 'returns the value' do
      expect(subject.value).to eq('A')
    end
  end
end
