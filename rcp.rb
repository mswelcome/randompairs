#Randomly choosing a partner from an array

 def rcp(n)
 	e = n.shuffle.each_slice(2).to_a
 	if n.length % 2 == 0
 		e.length
 	else n.length % 2 == 1
  		e[0] << e[ - 1]
  		e.pop
  		e[0].flatten!
  	end
 	p "#{e}"
 	p e.length
 end


