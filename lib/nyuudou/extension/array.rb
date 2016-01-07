class Array
  def bubble_sort
    ary = self.dup
    (0...(ary.length - 1)).each { |i|
      ((i+1)...(ary.length)).reverse_each { |j|
        ary[j-1], ary[j] = ary[j], ary[j-1] if ary[j-1] > ary[j]
      }
    }
    ary
  end

  def bubble_sort!
    (0...(self.length - 1)).each { |i|
      ((i+1)...(self.length)).reverse_each { |j|
        self[j-1], self[j] = self[j], self[j-1] if self[j-1] > self[j]
      }
    }
    self
  end

  def selection_sort
    ary = self.dup
    (0...(ary.length - 1)).each { |i|
      min = i
      ((i+1)...(ary.length)).each { |j|
        min = j if ary[j] < ary[min]
      }
      ary[i], ary[min] = ary[min], ary[i]
    }
    ary
  end

  def selection_sort!
    (0...(self.length - 1)).each { |i|
      min = i
      ((i+1)...(self.length)).each { |j|
        min = j if self[j] < self[min]
      }
      self[i], self[min] = self[min], self[i]
    }
    self
  end
end
