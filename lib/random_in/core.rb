# coding: utf-8

Integer.class_eval do
  def method_missing(name, from = 0, to = 10, may_repeat = false, &block)
    if(name.eql?(:random_in) || name.eql?(:randoms_in))

      from = from.to_i
      to = to.to_i

      # 
      # To avoid infinite loop.
      # For negative "from" a zero appears:
      #   3.randoms_in(-1, 1, false) <-- is ok sinse we have 0, [-1, 0, 1]
      # 
      if(!may_repeat)
        msg = "The result set is going to be less than your number. When parameter \"may_repeat\" is false it is an error."
        case true
        when(from < 0 && ((-(from) + to) < self.to_i - 1)), (from > 0 && (self.to_i > to.to_i))
          raise(ArgumentError, msg, caller)
        end
      end


      # "from" has to be less than "to"
      if(from > to)
        msg = "Parameter \"to\" has to be more than parameter \"from\"."
        raise(ArgumentError, msg, caller)
      end


      result = []
      self.times { |i|
        n = rand(from..to)
        if(!may_repeat)
          while(result.index(n) != nil)
            n = rand(from..to)
          end
        end
        result << n
      }
      
      # Если передается блок, то в него возвращается и резульат и
      # само число:
      # 5.randoms_within(1, 10) { |n, rs| puts "i = #{n}; n = #{rs}" }
      # #=> n = 5; rs = [4, 2, 10, 7, 8]
      if block_given?
        yield self, result
      else
        return result
      end
    else
      super
    end
  end
end