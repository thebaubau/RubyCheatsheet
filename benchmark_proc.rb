require 'benchmark'
require './custom_functions'

hash = { a: 1, b: 2, c: 3, d: 4 }

n = 500_000

Benchmark.bm do |benchmark|
  benchmark.report('Hash#to_proc  ') do
    n.times do
      %i(a b c).map(&hash)
    end
  end

  benchmark.report('Hash Values   ') do
    n.times do
      hash.values
    end
  end

  benchmark.report('Hash Values At') do
    n.times do
      hash.values_at(%i(a b c))
    end
  end
end

p hash.values_at(*%i(a b c))

Benchmark.bm do |benchmark|
  benchmark.report('Instance Adder') do
    n.times do
      Adder.new(10).add_one
    end
  end

  benchmark.report('Self Adder    ') do
    n.times do
      Adder[10].add_one
    end
  end
end

# puts Benchmark.measure {
#   5000000.times do
#     %i(a b c).map(&hash)
#   end
# }
