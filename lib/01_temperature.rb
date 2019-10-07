def ftoc(f)
    return "#{(f - 32) * 5/9}".to_i
end

def ctof(c)
    return "#{(c * 9.0/5) + 32}".to_f
    # return "#{(c * 1.8) + 32}".to_f
end

# puts ctof(37)