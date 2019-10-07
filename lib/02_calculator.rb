def add(*a)
    return "#{a.inject(0, :+)}".to_i
    # return "#{a + b}".to_i
end

def subtract(a, b)
    return "#{a - b}".to_i
end

def sum(array)
    return array.inject(0, :+).to_i
end

def multiply(a, b)
    return "#{a * b}".to_i
end

def power(a, b)
    return "#{a ** b}".to_i
end

def factorial(n)
    if n == 0
        f = 0
    else
        f = (1..n).reduce(1, :*)
    end
    return "#{f}".to_i
end


# puts add(5, 10)
# puts sum([2, 3, 10])
# puts "#{(1..5).reduce(1, :*)}"