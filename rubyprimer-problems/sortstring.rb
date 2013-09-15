def sortstring(string1)

string1.split(' ').sort{ |x,y| x.length<=> y.length}.join(' ');


end



puts sortstring("hello my name is vinod");