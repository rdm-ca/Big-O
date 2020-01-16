end_number = ARGV[0].to_i

$n = (1..end_number).to_a  # Create our dataset input to the size
$o_count = 0

#
# Perform a simple search through the array
#
def search( num_to_find )
  $n.each do |num|
    $o_count += 1
    break if num == num_to_find
  end
end

search( end_number )  # Perform a worst case scenario

puts "n = " + $n.length.to_s + "  o = " + $o_count.to_s
