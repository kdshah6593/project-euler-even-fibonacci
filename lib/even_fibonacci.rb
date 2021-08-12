# Implement your procedural solution here!

def even_fibonacci_sum(limit)
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

    result.select { |num| num.even? }.inject(:+)
end