module Enumerable
    def my_each
      for n in self
        yield(self[n])
      end
    end
    
    def my_each_with_index
      for n in self
        yield(self[n], n)
      end
    end
    
    def my_select
      arr = []
      for n in self
        if yield(self[n])
          arr << self[n]
        end
      end
      arr
    end
    
    def my_all?
      for n in self
        if !yield(self[n])
          return false
        end
      end
      return true
    end
    
    def my_any?
      for n in self
        if yield(self[n])
          return true
        end
      end
      return false
    end
    
    def my_none?
      for n in self
        if yield(self[n])
          return false
        end
      end
      return true
    end
    
    def my_count
      res = 0
      self.my_each {|x| res += 1}
      res
    end
    
    def my_map(block)
      arr = []
      if block.is_a? Proc
        self.my_each {|x| arr << block.call(x)}
      else
        self.my_each {|x| arr << yield(x)}
      end
      arr
    end
    
    def my_inject
      res = 0
      self.my_each {|x| res += x}
      res
    end
    
    def my_inject
      res = 0
      self.my_each {|x| res += x}
      res
    end
    
    def multiply_els
      res = 1
      self.my_each {|x| res *= x}
      res
    end
end