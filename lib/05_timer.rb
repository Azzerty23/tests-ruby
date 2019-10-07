def time_string(seconds)
    return Time.at(seconds.to_i).utc.strftime("%T")  # .strftime("%H:%M:%S")
end

puts time_string("4000")

def time_string2(sec)
    [sec / 3600, sec / 60 % 60, sec % 60].map{|t| t.to_s.rjust(2,'0')}.join(':')
end

puts time_string2(4000)