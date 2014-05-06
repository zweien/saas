# encoding: utf-8
def sum(arr)
    y=0
    arr.each{|x| y += x}
    return y
end
    
def max_2_sum(arr)
    sum(arr.sort.last(2))
end

def sum_to_n?(arr, n)
    if arr.size==0 and n==0
        return true
    end
    comb = arr.combination(2).to_a
    comb.collect{|x| sum(x)}.include?(n)
end
