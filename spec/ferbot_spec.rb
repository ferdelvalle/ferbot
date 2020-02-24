require_relative '../logic'

RSpec.describe Dishes do
  let(:marray) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:sarray) { [[1, 2, 3, 4], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5, 6]] }

  describe '#recommend_cousine' do
    it 'returns the index of a random value of an array' do
      marray = [1, 2, 3, 4]
      outie = Dishes.recommend_cousine(marray)
      expect(outie).to be_a(Integer)
    end
  end

  describe '#recommend_dish_index' do
    it 'returns the length of an array excluding the last value as an integer' do
      outie = Dishes.recommend_dish_index(sarray, 2)
      expect(outie).to be_a(Integer)
    end

    it 'returns the length of an array excluding the last value' do
      outie = Dishes.recommend_dish_index(sarray, 1)
      expect(outie).to eql(4)
    end
  end

  describe '#recommend_dish' do
    it 'returns a random value of a specified subarray' do
      outie = Dishes.recommend_dish(sarray, 1)
      expect(outie).to be_a(Integer)
    end
  end

  describe '#recommend_country' do
    it 'returns a specific value of a specified array' do
      outie = Dishes.recommend_country(sarray, 1, 4)
      expect(outie).to eql(5)
    end

    it 'returns a specific value of a specified array' do
      outie = Dishes.recommend_country(sarray, 0, 2)
      expect(outie).to eql(3)
    end
  end

  describe '#recommend' do
    it 'returns an array' do
      outie = Dishes.recommend
      expect(outie).to be_a(Array)
    end

    it 'returns an array two values' do
      outie = Dishes.recommend
      expect(outie.length).to eql(2)
    end

    it 'displays the board' do
      outie = Dishes.recommend
      expect(outie[0]).to be_a(String)
    end

    it 'displays the board' do
      outie = Dishes.recommend
      expect(outie[1]).to be_a(String)
    end
  end
end
