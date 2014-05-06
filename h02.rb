def hello(name)
    "Hello, #{name}"
end

def starts_with_consonant?(s)
    #puts s
    s =~ /\A[a-z&&[^aeiou]]/i
end

# def binary_multiple_of_4?(s)
    # if s =~ /[^01]/ or s.empty? or s.to_i == 0
        # return false
    # end
    # s.to_i(2).modulo(4)==0 ? true : false
# end
def binary_multiple_of_4?(s)
    s =~ /^[01]*1[01]*00$/
end

#print binary_multiple_of_4?('00')