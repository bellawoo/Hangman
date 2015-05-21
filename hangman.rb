require 'pry'
require '/.dictionary.rb'
require '/.player.rb'

class HangTheHooman
	attr_reader :answer

	def initialize
		# Select a random word from the Dictionary array
		@answer = dictionary.sample
		@right_guess = " "
		@user_has_won = false
		@tries = answer.length * 2
		puts answer.each do |x|
			print "_"
		end
		@guess = gets.chomp.downcase
	end

	# Transform the answer into an array of letters
	def letters_in_word
		letters = answer.chars.to_a
	end

	# Check to see if the letter is in the array
	# If the letter is not in the word, 
	def check_letter guess
		until letters.include(guess)
			@tries -= 1
			return :yup!
			puts "#{guess} isn't in the word I'm thinking of. Try again."
		end

		if letters.include?(guess)
			@tries -= 1
		end
	end

# Game is over if human player has won or lost
	def over?
		won? || lost?
	end

# Human wins when this is true
	def won?
		@user_has_won
	end

# Human has lost when human runs out of tries AND the word is not completely filled out
	def lost?
		@tries.zero? && !@user_has_won
	end

	end


