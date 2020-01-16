end_number = ARGV[0].to_i

$o_count = 0

#
# Perform a recursive loop into the array.
#
def start( end_number )
  $o_count += 1
  current_number = 0

  while current_number < end_number
    dive( current_number, 0 )
    current_number += 1
  end
end

def dive( current_number, depth )
  $o_count += 1
  depth += 1

  if depth < current_number
    dive( current_number, depth )
  end
end

start( end_number )  # Perform a worst case scenario

puts "n = " + end_number.to_s + "  o = " + $o_count.to_s
