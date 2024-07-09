arr = [78,73,4,2,1,0]
##make optimization for k sorted elements
def iteration (element, arr, e_index)
  arr[1..].each{|compared|

  }
end

def bubble_sort (arr) 
  (arr.length-1).times{
    arr.each.with_index{|element, index|
      if arr[index+1] && (element > arr[index+1])
        arr[index .. index+1] = arr[index+1], arr[index]
      end
      p arr
    }
  }
end
  
  


bubble_sort(arr)