#write your code here
def add(num,numo)
    return num + numo
end

def subtract(num,numo)
    return num - numo
end

def sum(array)
    sum = 0
    for i in array
        sum += i
    end
    return sum
end

def multiply(array)
    total = 1
    for i in array
        total *= i 
    end
    return total
end

def power(num,numo)
    return num**numo
end

def factorial(num)
    if num == 0
        return 1
    elsif num == 1
        return 1
    else
        return num * factorial(num-1)
    end
end
