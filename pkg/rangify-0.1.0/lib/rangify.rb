module Rangify
	def rangify
    raise 'Array elements are not consistent.' if self.collect { |value| comparison_value(value, :first).class }.uniq.size > 1 
    array = self.uniq.sort_by { |element| comparison_value(element, :first) }
    array.inject([]) do |collection, value|
      unless collection.empty?
        last = collection.last
        last_value = comparison_value(last, :last)
        current_value = comparison_value(value, :first)
        if (last_value.succ <=> current_value) == -1
          collection << value
        else
          first = [comparison_value(last, :first), comparison_value(value, :first)].min
          second = [comparison_value(last, :last), comparison_value(value, :last)].max
          collection[-1] = [first..second]
          collection.flatten!
        end
      else
        collection << value
      end
    end
  end

  private

  # For a Range, will return value.first or value.last. A non-Range will return itself.  
  def comparison_value(value, position)
    return value if value.class != Range
    position == :first ? value.first : value.last
  end
end

class Array
  include Rangify
end