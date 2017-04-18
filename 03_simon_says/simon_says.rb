def echo(phrase)
	phrase.to_s
end	

def shout(phrase)
	phrase.to_s.upcase
end	

def repeat(phrase, number = 2)
	newPhrase = ""
	number.times do
		newPhrase += phrase + " "
	end
	return newPhrase.chop
end	

def start_of_word(word, place)
	word[0..place-1]
end

def first_word(phrase)
	firstWord = phrase.split(' ')
	firstWord[0].to_s
end	

def titleize(title)
	if title.include?(' ')
		titleArray = title.to_s.split(' ')
		titleArray.each do |i|
			if i.to_s == 'the'
				i.to_s
			elsif i.to_s == 'and'
				i.to_s
			elsif i.to_s == 'over'
				i.to_s
			else i.to_s.capitalize!
			end
		end
		titleArray[0].capitalize!
		titleArray.join(' ')
	else title.capitalize!
	end
end	