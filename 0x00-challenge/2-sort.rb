###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Try to convert the argument to an integer
    i_arg = arg.to_i
    
    # Check if the conversion was successful (non-zero)
    if i_arg != 0
        # Insert the integer argument at the right position in the sorted result
        is_inserted = false
        i = 0
        l = result.size
        while !is_inserted && i < l do
            if result[i] < i_arg
                i += 1
            else
                result.insert(i, i_arg)
                is_inserted = true
                break
            end
        end
        result << i_arg if !is_inserted
    end
end

puts result
