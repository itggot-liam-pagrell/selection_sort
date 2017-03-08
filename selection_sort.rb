toBsorted =[9,5,2,1,4,8,10,14,3,7] #toBsorted är en array

def sortarray_ascending(sortMe) #Start på funktionen
  index = 0 #Index har värdet 0
  while index <= sortMe.length-1 #outer loop, kollar vilket värde index 0 är, sätter index 0 till lowest
    lowest = sortMe[index]
    lowestindex = index

    for i in index+1..sortMe.length-1 #inner loop, kollar vilket värde index 1 är och jämför index 0 och 1 med varandra, kollar om index 0 är större än index 1
      if lowest > sortMe[i]
        lowest = sortMe[i]
        lowestindex = i
      end
    end
    sortMe[lowestindex] = sortMe[index] #swapar lowest med lowestindex, höjer index med 1, loopar tillbaka till början av funktionen
    sortMe[index] = lowest
    index += 1
  end
end

puts "unsorted : #{toBsorted}"
sortarray_ascending(toBsorted)
puts "sorted : #{toBsorted}"
