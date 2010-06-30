require 'lib/rangify'

describe Rangify do
	it 'An array of consecutive integers should return an array made up of a single range.' do
		arr = [1,2,3,4,5]
		arr.rangify.should == [1..5]
	end
	
	it 'An array of non-consecutive integers should return the original array.' do
		arr = [1,3,5,7]
		arr.rangify.should == arr
	end

	describe 'An array of consecutive and non-consecutive integers' do
		before :each do
			@result = [1..3, 6..8, 10, 15] 
		end

		it 'should return the correct ranges.' do
			arr = [1,2,3,6,7,8,10,15]
			arr.rangify.should == @result
		end
	
		it 'Array element order should not affect the result.' do
			arr = [8, 1, 15, 2, 6, 3, 7, 10]
			arr.rangify.should == @result
		end
		
		it 'Duplicate elements should not affect the result.' do
			arr = [8, 1, 15, 2, 6, 3, 7, 10, 8, 15, 2, 3, 1, 2]
			arr.rangify.should == @result
		end
	end
		
	it 'An array of ranges should return the correct ranges.' do
		arr = [40..45, 1..3, 4..10, 20..30, 24..28, 42..50, 1..6, 1..3]
		arr.rangify.should == [1..10, 20..30, 40..50]
	end
	
	it 'An array of ranges and integers should return the correct ranges.' do
		arr = [99, 100, 1..3, 101, 4..5, 103, 10..19, 99, 20..20, 31, 32..33, 98, 97]
		arr.rangify.should == [1..5, 10..20, 31..33, 97..101, 103]
	end
end
	