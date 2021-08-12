# Implement your object-oriented solution here!

class EvenFibonacci
    attr_accessor :limit
    
    def initialize(limit)
        self.limit = limit
    end

    def get_fibonacci_array()
        first_num = 0
        second_num = 1
        sum = 1
        result = []

        while sum < limit
            result.push(sum)
            first_num = second_num
            second_num = sum
            sum = first_num + second_num
        end

        result
    end
    
    def sum
        get_fibonacci_array().select { |num| num.even? }.inject(:+)
    end
end