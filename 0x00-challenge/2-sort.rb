###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i - 1, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

def sort_arr(arr)
  i = 0
  while i < arr.size && i + 1 < arr.size do
    if arr[i] > arr[i + 1]
      tmp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = tmp
    end
    i += 1
  end
  if !check_sort(arr)
    sort_arr(arr)
  end
end

def check_sort(arr)
  j = 0
  while j < arr.size && j + 1 < arr.size do
    if arr[j] > arr[j + 1]
      return false
    end
    j += 1
  end
  return true
end

sort_arr(result)

puts result
