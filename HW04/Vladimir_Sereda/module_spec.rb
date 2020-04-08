# frozen_string_literal: true

require_relative 'module.rb'

class Array
  include Modules
end

describe '#for_each' do
  subject { Array.new([1, 2, 3, 4, 5]) }
  context 'given array [1,2,3,4,5]' do
    it 'return values from array' do
      expect do
        subject.for_each { |elem| puts elem }
      end.to output("1\n2\n3\n4\n5\n").to_stdout
    end
  end
end

describe '#for_map' do
  subject { Array.new([1, 2, 3, 4, 5]) }
  context 'given array [1,2,3,4,5]' do
    it 'return  [2,4,6,8,10]' do
      expect do
        result = subject.for_map { |elem| elem * 2 }
        expect(result).to match_array [2, 4, 6, 8, 10]
      end
    end
  end
end

describe '#for_select' do
  subject { Array.new([1, 2, 3, 4, 5]) }
  context 'given array [1,2,3,4,5]' do
    it 'return an array of numbers [1,2,3]' do
      expect do
        result = subject.for_select { |elem| elem < 4 }
        expect(result).to match_array[1, 2, 3]
      end
    end
  end
end
