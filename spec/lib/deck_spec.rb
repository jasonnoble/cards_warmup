require 'rspec'
require 'rspec/collection_matchers'
require './lib/deck'

describe Deck do
  it 'should be a Deck' do
    expect(subject).to be_a(Deck)
  end

  describe '.cards' do
    it 'should have 52 cards' do
      expect(subject.cards).to have(52).cards
    end
    describe 'suits' do
      it "should have 13 ♥'s" do
        heart_cards = subject.cards.select { |card| card.suit == Card::HEART }
        expect(heart_cards).to have(13).cards
      end
      it "should have 13 ♠'s" do
        spade_cards = subject.cards.select { |card| card.suit == Card::SPADE }
        expect(spade_cards).to have(13).cards
      end
      it "should have 13 ♦'s" do
        # rubocop:disable Metrics/LineLength
        diamond_cards = subject.cards.select { |card| card.suit == Card::DIAMOND }
        # rubocop:enable Metrics/LineLength
        expect(diamond_cards).to have(13).cards
      end
      it "should have 13 ♣'s" do
        club_cards = subject.cards.select { |card| card.suit == Card::CLUB }
        expect(club_cards).to have(13).cards
      end
    end
  end
end
