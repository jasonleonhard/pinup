# SYNOPSIS:
# Given that you'd like to test the following class:

class Meme
  def i_can_has_cheezburger?
    "OHAI!"
  end

  def will_it_blend?
    "YES!"
  end
end

# Unit tests
require "minitest/autorun"

class TestMeme < Minitest::Test
  def setup
    @meme = Meme.new
  end

  # Define your tests as methods beginning with `test_`.
  def test_that_kitty_can_eat
    assert_equal "OHAI!", @meme.i_can_has_cheezburger?
  end

  def test_that_it_will_not_blend
    refute_match /^no/i, @meme.will_it_blend?
  end

  def test_that_will_be_skipped
    skip "test this later"
  end
end


# Specs
require "minitest/autorun"

describe Meme do
  before do
    @meme = Meme.new
  end

  describe "when asked about cheeseburgers" do
    it "must respond positively" do
      @meme.i_can_has_cheezburger?.must_equal "OHAI!"
    end
  end

  describe "when asked about blending possibilities" do
    it "won't say no" do
      @meme.will_it_blend?.wont_match /^no/i
    end
  end
end


# Benchmarks
# Add benchmarks to your tests.
# optionally run benchmarks, good for CI-only work!
require "minitest/benchmark" if ENV["BENCH"]

class TestMeme < Minitest::Benchmark
  # Override self.bench_range or default range is [1, 10, 100, 1_000, 10_000]
  def bench_my_algorithm
    assert_performance_linear 0.9999 do |n| # n is a range value
      @obj.my_algorithm(n)
    end
  end
end

# Or add them to your specs. If you make benchmarks optional, you'll need to wrap your 
# benchmarks in a conditional since the methods won't be defined. In minitest 5, the 
# describe name needs to match /Bench(mark)?$/.
describe "Meme Benchmark" do
  if ENV["BENCH"] then
    bench_performance_linear "my_algorithm", 0.9999 do |n|
      100.times do
        @obj.my_algorithm(n)
      end
    end
  end
end
# outputs something like:

# Running benchmarks:

# TestBlah  100 1000  10000
# bench_my_algorithm   0.006167  0.079279  0.786993
# bench_other_algorithm  0.061679  0.792797  7.869932
