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

 	it "returns the index of the letter if its in the word word" do

 		expect(game.letter_present("a")).to eq 4

 	end	

	it "update the word, if given the 'a' letter from the letter" do 
		# game.update_word("a")
		expect(game.update_word("a")).to	eq ["","","","","a","","","",""]
	end
end