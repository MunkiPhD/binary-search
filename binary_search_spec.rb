require_relative 'binary_search'

#
# codekata.pragprog.com
#
describe BinarySearch do
	before :all do
		@bs = BinarySearch.new
	end

	context 'recursive' do
		it 'returns the correct value' do
			# shouldn't write all the test cases in one test, but there's really no point to breaking it all up
			#check for nulls
			expect(@bs.recursive(nil, [1])).to eq -1
			expect(@bs.recursive(3, nil)).to eq -1

			# and these were the test cases provided
			expect(@bs.recursive(3, [])).to eq -1	# assert_equal(-1, chop(3, []))

			expect(@bs.recursive(3, [1])).to eq -1 # assert_equal(-1, chop(3, [1]))
			expect(@bs.recursive(1, [1])).to eq 0	# assert_equal(0,  chop(1, [1]))

			array = [1, 3, 5]
			#
			expect(@bs.recursive(1, array)).to eq 0	#	assert_equal(0,  chop(1, [1, 3, 5]))
			expect(@bs.recursive(3, array)).to eq 1	# assert_equal(1,  chop(3, [1, 3, 5]))
			expect(@bs.recursive(5, array)).to eq 2	# assert_equal(2,  chop(5, [1, 3, 5]))
			expect(@bs.recursive(0, array)).to eq -1 # assert_equal(-1, chop(0, [1, 3, 5]))
			expect(@bs.recursive(2, array)).to eq -1 # assert_equal(-1, chop(2, [1, 3, 5]))
			expect(@bs.recursive(4, array)).to eq -1 # assert_equal(-1, chop(4, [1, 3, 5]))
			expect(@bs.recursive(6, array)).to eq -1 # assert_equal(-1, chop(6, [1, 3, 5]))

			array = [1, 3, 5, 7]
			#
			expect(@bs.recursive(1, array)).to eq 0	#    assert_equal(0,  chop(1, [1, 3, 5, 7]))
			expect(@bs.recursive(3, array)).to eq 1	#    assert_equal(1,  chop(3, [1, 3, 5, 7]))
			expect(@bs.recursive(5, array)).to eq 2	#    assert_equal(2,  chop(5, [1, 3, 5, 7]))
			expect(@bs.recursive(7, array)).to eq 3	#    assert_equal(3,  chop(7, [1, 3, 5, 7]))
			expect(@bs.recursive(0, array)).to eq -1	#    assert_equal(-1, chop(0, [1, 3, 5, 7]))
			expect(@bs.recursive(2, array)).to eq -1 #    assert_equal(-1, chop(2, [1, 3, 5, 7]))
			expect(@bs.recursive(4, array)).to eq -1 #    assert_equal(-1, chop(4, [1, 3, 5, 7]))
			expect(@bs.recursive(6, array)).to eq -1 #    assert_equal(-1, chop(6, [1, 3, 5, 7]))
			expect(@bs.recursive(8, array)).to eq -1 #    assert_equal(-1, chop(8, [1, 3, 5, 7]))
		end
	end

	context 'iterative' do
		it 'returns the correct value' do
			# shouldn't write all the test cases in one test, but there's really no point to breaking it all up
			#check for nulls
			expect(@bs.iterative(nil, [1])).to eq -1
			expect(@bs.iterative(3, nil)).to eq -1

			# and these were the test cases provided
			expect(@bs.iterative(3, [])).to eq -1	# assert_equal(-1, chop(3, []))

			expect(@bs.iterative(3, [1])).to eq -1 # assert_equal(-1, chop(3, [1]))
			expect(@bs.iterative(1, [1])).to eq 0	# assert_equal(0,  chop(1, [1]))

			array = [1, 3, 5]
			#
			expect(@bs.iterative(1, array)).to eq 0	#	assert_equal(0,  chop(1, [1, 3, 5]))
			expect(@bs.iterative(3, array)).to eq 1	# assert_equal(1,  chop(3, [1, 3, 5]))
			expect(@bs.iterative(5, array)).to eq 2	# assert_equal(2,  chop(5, [1, 3, 5]))
			expect(@bs.iterative(0, array)).to eq -1 # assert_equal(-1, chop(0, [1, 3, 5]))
			expect(@bs.iterative(2, array)).to eq -1 # assert_equal(-1, chop(2, [1, 3, 5]))
			expect(@bs.iterative(4, array)).to eq -1 # assert_equal(-1, chop(4, [1, 3, 5]))
			expect(@bs.iterative(6, array)).to eq -1 # assert_equal(-1, chop(6, [1, 3, 5]))

			array = [1, 3, 5, 7]
			#
			expect(@bs.iterative(1, array)).to eq 0	#    assert_equal(0,  chop(1, [1, 3, 5, 7]))
			expect(@bs.iterative(3, array)).to eq 1	#    assert_equal(1,  chop(3, [1, 3, 5, 7]))
			expect(@bs.iterative(5, array)).to eq 2	#    assert_equal(2,  chop(5, [1, 3, 5, 7]))
			expect(@bs.iterative(7, array)).to eq 3	#    assert_equal(3,  chop(7, [1, 3, 5, 7]))
			expect(@bs.iterative(0, array)).to eq -1	#    assert_equal(-1, chop(0, [1, 3, 5, 7]))
			expect(@bs.iterative(2, array)).to eq -1 #    assert_equal(-1, chop(2, [1, 3, 5, 7]))
			expect(@bs.iterative(4, array)).to eq -1 #    assert_equal(-1, chop(4, [1, 3, 5, 7]))
			expect(@bs.iterative(6, array)).to eq -1 #    assert_equal(-1, chop(6, [1, 3, 5, 7]))
			expect(@bs.iterative(8, array)).to eq -1 #    assert_equal(-1, chop(8, [1, 3, 5, 7]))
		end
	end
end
