require 'pry'
require "./player.rb"

class HangTheHooman
	attr_reader :answer, :guess

	def initialize
		dictionary = File.read("dictionary.txt").split(",")
		@answer = dictionary.sample
		@letters = answer.chars.to_a
		@user_has_won = false
		@tries = answer.length * 2
	end

	# def board word, guessed_letters
	# 	placeholder = " "
	# 	answer.chars { |chars| placeholder += (guessed_letters.include? char)? char : "_" }
	# end

	# Transform the answer into an array of letters
	# def letters_in_word
	# 	letters = answer.chars.to_a
	# end

	# Check to see if the letter is in the array
	def check_letter guess
		until @letters.include?(guess)
			@tries -= 1
			return :nope!
			puts "#{guess} isn't in the word I'm thinking of. Try again."
		end

		if @letters.include?(guess)
			@tries -= 1
			return :yup!			# @word.split(//).map { |letter| @used_letters[letter] ? letter : "_" }.join
			@letters.map { |letter| @used_letters[letter] ? letter : "_" }.join
			puts "#{guess} is a letter in the word I'm thinking of."
			# letters.each do |letter|
			# 	if ...
			# 		print letter
			# 	else
			# 		print "_"
			# end
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


