def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, number=2)
    r = "#{string} "*number
    r = r.to_s.rstrip!
    return r
end

def start_of_word(string, number)
    return string[0...number]
end

def first_word(string)
    return string.split(' ').first
end

# def titleize(string)
#     return string   .split
#                     .map(&:capitalize)
#                     .join(" ")
#                     .
# end

def titleize(string)
    words = string.split
    words.each_with_index do |word, index|
      if word.length <=3 && index > 0
        word.downcase!
      elsif word.length >3 || index == 0
        word.capitalize!
      end
    end
    words_titleised = words.join(' ')
    return words_titleised
end

puts titleize("the bridge over the river kwai")