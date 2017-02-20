# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”



"zom".insert(-2,'o')
# => “zoom”


"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete('T')
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# or
"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
# . Returns a new string where runs of the same character that occur in this set are replaced by a single character. If no arguments are given, all runs of identical characters are replaced by a single character.

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It is the the value of 'z' on the ASCII table

"How many times does the letter 'a' appear in this string?".count "a"
# => 4