end_number = ARGV[0].to_i

$n = (1..end_number).to_a  # Create our dataset input to the size
$o_count = 0

#
# Perform a binary chop search through the array
#
def search( num_to_find )
  # Get the first value at the mid-point of the array
  pos = $n.length / 2
  num = $n[ pos ]

  while num != num_to_find do
    $o_count += 1

    if num_to_find > num
      newLen = $n.length - pos
      pos += newLen / 2
    else
      newLen = $n.length - pos
      pos -= newLen / 2
    end

    num = $n[pos]
  end
end

search( end_number )  # Perform a worst case scenario

puts "n = " + $n.length.to_s + "  o = " + $o_count.to_s
