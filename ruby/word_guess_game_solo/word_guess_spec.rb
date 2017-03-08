require_relative 'word_guess'

describe Wordgame do
	let(:game) {Wordgame.new("pineapple")}

	it "stores the word given on initialization" do
		expect(game.word).to eq ["p","i","n","e","a","p","p","l","e"]
	end	

 	it "deletes the actual character from the word passed, leaves spaces empty" do

 		game.word_output

 		expect(game.word_output).to eq ["_","_","_","_","_","_","_","_","_"]
 	end		

	it "update the word, if given the 'p' letter and the 'e' from the letter" do 

		expect(game.update_word("p")).to	eq ["p","_","_","_","_","p","p","_","_"]

    # make sure it updates from previous guesses
    expect(game.update_word("e")).to eq ["p","_","_","e","_","p","p","_","e"]

	end

  it "does not update word and adds the letter to our guess_letter array" do

    expect(game.update_word("x")).to eq ["_","_","_","_","_","_","_","_","_"]
    expect(game.guessed_letters).to eq ["x"]
  end

end  
