end_number = ARGV[0].to_i

$n = (1..end_number).to_a  # Create our dataset input to the size
$o_count = 0

#
# Process each of the numbers is the area within a nested loop.
#
def list_primes( highest_num )
  $n.each do |num|
    $o_count += 1
    prime = true

    $n.each do |divider_num|
      $o_count += 1

      if divider_num > 1 && divider_num < num
        if num % divider_num == 0
          prime = false
          break
        end
      end
    end

    break if num == highest_num
  end
end

list_primes( end_number )  # Perform a worst case scenario

puts "n = " + $n.length.to_s + "  o = " + $o_count.to_s
