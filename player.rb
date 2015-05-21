require 'pry'
require '/.hangman.rb'

game = HangTheHooman.new

class SillyHooman
	def get_letter
		puts "Guess a letter to complete spelling the word"
		gets.chomp
	end
end

until game.over?
	guess = SillyHooman.get_letter
	result = game.check_letter guess
	