end_number = ARGV[0].to_i

$n = (1..end_number).to_a  # Create our dataset input to the size
$o_count = 0

#
# Process each of the numbers is the area within a nested loop.
#
def list_primes( highest_num )
  primes = Array.new

  $n.each do |num|
    $o_count += 1
    prime = true

    primes.each do |divider_num|
      $o_count += 1

      if divider_num > 1
        if num % divider_num == 0
          prime = false
          break
        end
      end
    end

    if prime
      primes << num
    end

    break if num == highest_num
  end
end

list_primes( end_number )  # Perform a worst case scenario

puts "n = " + $n.length.to_s + "  o = " + $o_count.to_s
