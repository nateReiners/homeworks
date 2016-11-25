# require 'byebug'
class LRUCache
    def initialize(cache_length)
      @cache = Array.new(cache_length)
    end

    def count
      puts @cache.reject(&:nil?).length
    end

    def add(el)
      if @cache.include?(el)
        make_most_recent(el)
      else
        @cache.push(el)
        @cache.shift
      end
    end

    def show
      @cache
    end

    private

    def make_most_recent(el)
      @cache.delete(el)
      @cache << el
    end
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
