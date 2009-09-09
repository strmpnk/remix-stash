require 'benchmark'
require File.dirname(__FILE__) + '/../harness'
require File.dirname(__FILE__) + '/../harness_cache'

LARGE_NUMBER = 20_000

huge_value = 'a' * 100_000
large_value = 'b' * 20_000
med_value = 'c' * 2_000
small_value = 'd' * 100
tiny_value = 'e'

KEY = 'abc123xyz'

Benchmark.bmbm do |b|
  b.report('100k stash') do
    LARGE_NUMBER.times {
      stash.write(KEY, huge_value)
      stash.read(KEY)
    }
  end
  b.report('100k cache') do
    LARGE_NUMBER.times {
      Cache.set(KEY, huge_value, 0, true)
      Cache.get(KEY, true)
    }
  end
  b.report('20k stash') do
    LARGE_NUMBER.times {
      stash.write(KEY, large_value)
      stash.read(KEY)
    }
  end
  b.report('20k cache') do
    LARGE_NUMBER.times {
      Cache.set(KEY, large_value, 0, true)
      Cache.get(KEY, true)
    }
  end
  b.report('2k stash') do
    LARGE_NUMBER.times {
      stash.write(KEY, med_value)
      stash.read(KEY)
    }
  end
  b.report('2k cache') do
    LARGE_NUMBER.times {
      Cache.set(KEY, med_value, 0, true)
      Cache.get(KEY, true)
    }
  end
  b.report('100b stash') do
    LARGE_NUMBER.times {
      stash.write(KEY, small_value)
      stash.read(KEY)
    }
  end
  b.report('100b cache') do
    LARGE_NUMBER.times {
      Cache.set(KEY, small_value, 0, true)
      Cache.get(KEY, true)
    }
  end
  b.report('1b stash') do
    LARGE_NUMBER.times {
      stash.write(KEY, tiny_value)
      stash.read(KEY)
    }
  end
  b.report('1b cache') do
    LARGE_NUMBER.times {
      Cache.set(KEY, tiny_value, 0, true)
      Cache.get(KEY, true)
    }
  end
end
