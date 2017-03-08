require_relative 'word_guess'

describe Wordgame do
	let(:game) {Wordgame.new("pineapple")}

	it "stores the word given on initialization" do
		expect(game.word).to eq ["p","i","n","e","a","p","p","l","e"]
	end	

 	it "deletes the actual character from the word passed, leaves spaces empty" do

 		game.word_output

 		expect(game.word_output).to eq ["","","","","","","","",""]
 	end		



	it "update the word, if given the 'p' letter and the 'e' from the letter" do 

		expect(game.update_word("p")).to	eq ["p","","","","","p","p","",""]
    p game.update_word()
    expect(game.update_word("e")).to eq ["p","","","e","","p","p","","e"]

	end




end