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
    puts "l: "
    puts  l
    puts "result: "
    print  result
    while !is_inserted && i < l do
      if result[i] >= i_arg
        i += 1
      else
        print "i: "
        puts i
        print "l: "
        puts l
        if (i + 1) < l
          sub = result[i + 1...l]
          j = i + 1;
          while j < result.size do
            result.delete_at(j)
          end
          result << i_arg
          puts
          result.concat(sub)
        else
          result << i_arg
        end
        is_inserted = true
        break
      end
    end
    result.unshift(i_arg) if !is_inserted
end

puts result
