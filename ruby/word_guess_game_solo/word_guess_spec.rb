require_relative 'word_guess'

describe Wordgame do
	let(:game) {Wordgame.new("pineapple")}

	it "stores the word given on initialization" do
		expect(game.word).to eq ["p","i","n","e","a","p","p","l","e"]
	end	

 	it "format word returns array of the length of the initialized word" do
    # testing the return of format_word rather than the value
 		expect(game.format_word).to eq ["_","_","_","_","_","_","_","_","_"]
 	end		

	it "update the word, if given the 'p' letter and the 'e' from the letter" do 

		expect(game.update_word("p")).to	eq ["p","_","_","_","_","p","p","_","_"]

    # make sure it updates from previous guesses
    expect(game.update_word("e")).to eq ["p","_","_","e","_","p","p","_","e"]

	end

  it " does not update word and adds the letter to our guess_letter array" do
 # p @guessed_letters.class
    expect(game.update_word("x")).to eq ["_","_","_","_","_","_","_","_","_"]

    # make separate test for this action. adding the incorrect guess to our guessed letters array

    expect(game.guessed_letters).to eq ["x"]
  end

  it "tells us the allowed guesses they have based on the word length" do
    expect(game.guesses_allowed).to eq 5

    game2 = Wordgame.new("hi")
    expect(game2.guesses_allowed).to eq 4

  end  

  it "takes away from allowed guesses based on incorrect and unused input" do
    game.update_word("x")
    expect(game.allowed_guess).to eq 4
  end 



  it "loses game" do
    game.update_word("x")
    game.update_word("y")
    game.update_word("z")
    game.update_word("l")
    game.update_word("u")
    game.update_word("o")


    expect(game.is_over).to eq true
  end

    it "wins game" do
    game.update_word("a")
    game.update_word("p")
    game.update_word("n")
    game.update_word("i")
    game.update_word("l")
    game.update_word("e")
    game.update_word("n")

    expect(game.is_over).to eq true
  end


end  
