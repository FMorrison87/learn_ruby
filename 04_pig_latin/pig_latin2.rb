def translate(word)
  
	
  if word.include?(" ")
		word = word.split(" ")
		
		firstWord = word[0]
		secondWord = word[1]
		secondWord = secondWord.split('')
		firstWord = firstWord.split('')
		if firstWord[0].match(/a|e|i|o|u/i)
		  firstWord = firstWord.join('')
		  firstWord << "ay"
		elsif firstWord[0].match(/s/i) && firstWord[1].match(/q/i)
			firstWord = firstWord.rotate(3)
			firstWord = firstWord.join('')
			firstWord << 'ay'
		elsif firstWord[0].match(/q/i) && firstWord[1].match(/u/i)
			firstWord = firstWord.rotate(2)
			firstWord = firstWord.join('')
			firstWord << 'ay'
		elsif firstWord[0].match(/a|e|i|o|u/i) == nil
		  firstWord = firstWord.rotate(1)
		  	if firstWord[0].match(/a|e|i|o|u/i) == nil 
		  firstWord = firstWord.rotate(1)
			end
		  firstWord = firstWord.join('')
		  firstWord << "ay"
		end
		if secondWord[0].match(/a|e|i|o|u/i)
		  secondWord = secondWord.join('')
		  secondWord << "ay"
		elsif secondWord[0].match(/s/i) && secondWord[1].match(/q/i)
			secondWord = secondWord.rotate(3)
			secondWord = secondWord.join('')
			secondWord << 'ay'
		elsif secondWord[0].match(/q/i) && secondWord[1].match(/u/i)
			secondWord = secondWord.rotate(2)
			secondWord = secondWord.join('')
			secondWord << 'ay'
		elsif secondWord[0].match(/a|e|i|o|u/i) == nil
		  secondWord = secondWord.rotate(1)
		  if secondWord[0].match(/a|e|i|o|u/i) == nil 
		    secondWord = secondWord.rotate(1)
		  end
		  secondWord = secondWord.join('')
		  secondWord << "ay"
	  end
		
		firstWord.to_s + ' ' + secondWord.to_s

	elsif word.include?("")
		word = word.split("")
		if word[0].match(/a|e|i|o|u/i)
			word = word.join('')
			word << 'ay'
		elsif word[0].match(/q/i) && word[1].match(/u/i)
				word = word.rotate(2)
				word = word.join('')
				word << 'ay'
		elsif word[0].match(/s/i) && word[1].match(/q/i)
				word = word.rotate(3)
				word = word.join('')
				word << 'ay'
		elsif word[0].match(/a|e|i|o|u/i) == nil
			 word = word.rotate(1)
			if word[0].match(/a|e|i|o|u/i) == nil
				word = word.rotate(1)
				if word[0].match(/a|e|i|o|u/i) == nil
					word = word.rotate(1)
				end
			end

			word = word.join("")
			word << 'ay'
		end
	end
end

