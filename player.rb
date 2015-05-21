require 'pry'
require '/.hangman.rb'

game = HangTheHooman.new

class SillyHooman
	def get_letter
		puts "Let's play Hangman.\nTry guessing what this word is:"
		gets.chomp.downcase
	end
end

# Controls asking human player to keep guessing
until game.over?
	guess = SillyHooman.get_letter
	result = game.check_letter guess
end

if game.won?
	puts "Wahoo! You guessed the word."
elsif game.lost?
	puts "This is really sad. You couldn't guess the word"
	puts "By the way, the word was @{game.answer}."
end