arr = [4,3,78,2,0,2]
def bubble_sort (arr)
  k = 0
  (arr.length-1).times{
    for i in 0 .. (arr.length-2-k)
      if arr[i+1] && (arr[i] > arr[i+1])
        arr[i .. i+1] = arr[i+1], arr[i]
      end
    end
    k+=1
  }
  arr
    
end
  
  


p bubble_sort(arr)