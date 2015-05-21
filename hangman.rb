require 'pry'
require '/.dictionary.rb'
require '/.player.rb'

class HangTheHooman
	attr_reader :answer
	def initialize
		puts "Let's play Hangman.\nGenerating your word..."
		# Select a random word from the Dictiionary array
		@answer = dictionary.sample
		@user_has_won = false
		@tries = answer.length * 2
	end

	def over?
	end

	def won?
	end

	def lost?
	end

# Transform the answer into an array of letters

# Check to see if the letter is in the array
# If letter is in array, remove from array
	def check_letter guess
		until [].include(guess)
	end

end

