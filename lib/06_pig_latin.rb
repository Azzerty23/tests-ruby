def translate(words)
translation = []
vowels = %w[a e i o u]

# "counts 'sch' as a single phoneme"
# "counts 'qu' as a single phoneme"
# "counts 'qu' as a consonant even when it's preceded by a consonant"
consonants = *("a".."z").to_a.unshift("qu", "sch") - vowels

# print "#{vowels} \n"
# print "#{consonants} \n"

    # translates many words
    for word in words.split

    # "counts 'qu' as a single phoneme"
        word = word.split('')
        worder = []
        word.each_with_index do |letter, index|
            if letter == "q" and word[index+1] == "u"
                worder << "qu"
            elsif letter == "u" and word[index-1] == "q"
                worder = worder
            else
                worder << letter
            end
        end
       
    # translation.map! { |w| w.match(/[[:upper:]]/) ? w.downcase.capitalize : w }

    # translates a word beginning with a vowel
        if vowels.include?(worder[0].downcase)
            translation << worder.join('') + "ay"

    # translates a word beginning with three consonants
        elsif ( (consonants.include?(worder[0].downcase)) and (consonants.include?(worder[1].downcase)) and (consonants.include?(worder[2].downcase)) )
            translation << [worder[3...worder.length] + worder[0...3]].join('') + "ay"

    # translates a word beginning with two consonants
        elsif ( (consonants.include?(worder[0].downcase)) and (consonants.include?(worder[1].downcase)) )
            translation << [worder[2...worder.length] + worder[0...2]].join('') + "ay"

    # translates a word beginning with a consonant
        else
            translation << [worder[1...worder.length] + worder[0...1]].join('') + "ay"

        end
    end

    translation.map! { |w| w.match(/[[:upper:]]/) ? w.downcase.capitalize : w }
    return translation.join(' ')
end

# puts translate("quiet")
# puts translate("banana")
# puts translate("Hello")
# puts translate("Anacrouse")
# puts translate("Prout")
# puts translate("eat pIe")
# puts translate("three potatoes")