def palindrome(sentence)

sent_check = sentence.gsub(" ","")
puts true if sent_check == sent_check.reverse
end


puts palindrome("hannah hannah")