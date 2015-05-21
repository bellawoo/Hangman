require 'minitest/autorun'
require '/.hangman.rb'
require '/.player.rb'

class GameTest < MiniTest::Test
	def test_games_arent_over_when_they_start
		g = HangTheHooman.new
		refute g.over?
	end

	def test_game_is_over_after_you_win
		n = HangTheHooman.new
		result = n.check_letter n.answer
		assert_equal result, :correct!
	end

	def test_game_can_check_wrong_guess
		m = HangTheHooman.new
		result = m.check_letter(answer)
		assert_equal result, :wrong!
		
	end
end