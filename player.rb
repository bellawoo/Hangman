require 'pry'
require "./hangman.rb"

game = HangTheHooman.new

class SillyHooman
	def get_letter
		puts "Let's play Hangman.\nTry guessing what this word is by supplying a letter:"
		guess = gets.chomp.downcase
	end
end

player = SillyHooman.new

# Controls asking human player to keep guessing
until game.over?
	guess = player.get_letter
	result = game.check_letter guess
end

if game.won?
	puts "Wahoo! You saved your own life."
elsif game.lost?
	puts "You're hanged. RIP"
	puts "By the way, the word was @{game.answer}."
end