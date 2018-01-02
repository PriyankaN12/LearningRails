#Number guessing game
puts "Enter your name"
name=gets
name=name.chomp
puts "\nHey #{name}!\n"
i=rand(100)+1
turns=10
got_it=false
while turns>0 and ! got_it
	puts "You have #{turns} guesses left"
	print "\nEnter your guess"
	guess=gets
	guess=guess.to_i

	if guess==i 
		puts "Good job #{name}! You guessed my number in #{10-turns} guesses"
		got_it=true
	elsif guess<i
		puts "Number too low"
	else
		puts "Number too high"
	end
turns-=1
end
unless got_it
	print "Out of turns! The number was #{i}"
end



