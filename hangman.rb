class HangTheHooman
	attr_reader :answer, :guess, :tries, :board

	def initialize
		puts "Let's play Hangman.\nTry guessing the word I'm thinking of."
		dictionary = File.read("dictionary.txt").split(", ")
		@user_has_won = false
		@answer = dictionary.sample
		@letters = @answer.chars
		@board = []
		@letters.each do |l|
			@board.push "_"
		end
		@tries = @letters.length * 2
	end

	def check_letter guess
		match = false
		index = 0

		@letters.each do |l|
			if l == guess
				match = true
				@board[index] = l
			end
			index += 1
		end

		if match
			puts "#{guess} is a letter in the word I'm thinking of."
			else
			puts "#{guess} isn't in the word I'm thinking of. Try again."
			@tries -= 1
		end
	end

	def won?
		@board.join("") == @answer
	end

	def lost?
		@tries == 0
	end

	def over?
		won? || lost?
	end
end

game = HangTheHooman.new

	# Controls asking human player to keep guessing
	until game.over?
		puts game.board
		puts "Pick a letter >"
		guess = gets.chomp

		game.check_letter guess

		puts "You have #{game.tries} tries left."
	end

	if game.won?
		puts "Wahoo! You saved your own life."
	elsif game.lost?
		puts "You're hanged. RIP"
		puts "By the way, the word was #{game.answer}."
	end
