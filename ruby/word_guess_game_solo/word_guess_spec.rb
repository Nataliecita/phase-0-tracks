require_relative 'word_guess'

describe Wordgame do
	let(:game) {Wordgame.new("pineapple")}

	it "stores the word given on initialization" do
		expect(game.get_word).to eq ["p","i","n","e","a","p","p","l","e"]
	end	

 	it "deletes the actual character from the word passed, leaves spaces empty" do

 		game.word_output

 		expect(game.word_output).to eq ["","","","","","","","",""]
 	end		

	# it "update the word, if given the 'a' letter from the letter" do 
	# 	game.update_word("a")
	# 	expect(game.update_word).to	eq ""
	
end