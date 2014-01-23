#!/usr/bin/env ruby
# 2011-10-10 20:57:53 +1000
 
def merge_sort(a)
    return a if a.size <= 1
    l, r = split_array(a)
    result = combine(merge_sort(l), merge_sort(r))
end
 
def split_array a
  mid = (a.size / 2).round
  [a.take(mid), a.drop(mid)]
end
 
def combine a, b
  return b.empty? ? a : b if a.empty? || b.empty?
  smallest = a.first <= b.first ? a.shift : b.shift
  combine(a, b).unshift(smallest)
end
 
a = [6,23,53,1,2,5,62,61,33,21,14,6,23].shuffle
p merge_sort(a) # p x <=> puts x.inspect
 
# Prefer a(b) over `a b`
# Implicit returns are A-Okay
# Library Methods: #empty?, #drop