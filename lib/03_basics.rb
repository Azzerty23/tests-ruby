def who_is_bigger(*a)
    abc = ('a'..'z').to_a
    bigHash = abc[0...a.length].zip(a).to_h
    if a.include?(nil)
        return "nil detected"
    else return "#{bigHash.key(bigHash.values.max)} is bigger"
    end
end

def reverse_upcase_noLTA(string)
    return string.upcase.reverse.delete('LTA')
end

def array_42(*intergers)
    return intergers.flatten.any?(42)
end

def magic_array(array)
    return array.flatten
                .sort
                .map { |k| k*2}
                .reject { |k| k%3 == 0 && k != 0}
                .uniq
                .sort
end


# puts who_is_bigger(5, 2, 7, 3)
# puts reverse_upcase_noLTA("Hello you !!!")
# puts array_42(54, 65, 43, 42, 10)
# puts expect(1, [1,2], 3, 0)
# puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])

