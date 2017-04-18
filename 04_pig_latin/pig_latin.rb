def translate(word)
   
  if word.include?(" ")
  word =  word.split(' ')
    word.map! do |v|
     if v[0].match(/a|e|i|o|u/i)
      v = v << "ay"
     elsif v[0].match(/s/i) && v[1].match(/q/i) && v[2].match(/u/i)
       v = v.split('')
       v = v.rotate(3)
       v = v.join('')
       v = v << "ay"
     elsif v[0].match(/q/i) && v[1].match(/u/i)
       v = v.split('')
       v = v.rotate(2)
       v = v.join('')
       v = v << "ay"
      elsif v[0].match(/a|e|i|o|u/i) == nil && v[1].match(/a|e|i|o|u/i) == nil && v[2].match(/a|e|i|o|u/i) == nil
       v = v.split('')
       v = v.rotate(3)
       v = v.join('')
       v = v << "ay"
     elsif v[0&&1].match(/a|e|i|o|u/i) == nil
       v = v.split('')
       v = v.rotate(2)
       v = v.join('')
       v = v << "ay"
     elsif v[0].match(/a|e|i|o|u/i) == nil
       v = v.split('')
       v = v.rotate(1)
       v = v.join('')
       v = v << "ay"
       
     end
    end
end
    if word.include?("")
      word =  word.split(' ')
    word.map! do |v|
     if v[0].match(/a|e|i|o|u/i)
      v = v << "ay"
     elsif v[0].match(/s/i) && v[1].match(/q/i) && v[2].match(/u/i)
       v = v.split('')
       v = v.rotate(3)
       v = v.join('')
       v = v << "ay"
     elsif v[0].match(/q/i) && v[1].match(/u/i)
       v = v.split('')
       v = v.rotate(2)
       v = v.join('')
       v = v << "ay"
   	 elsif v[0].match(/a|e|i|o|u/i) == nil && v[1].match(/a|e|i|o|u/i) == nil && v[2].match(/a|e|i|o|u/i) == nil
       v = v.split('')
       v = v.rotate(3)
       v = v.join('')
       v = v << "ay"
     elsif v[0&&1].match(/a|e|i|o|u/i) == nil
       v = v.split('')
       v = v.rotate(2)
       v = v.join('')
       v = v << "ay"
     elsif v[0].match(/a|e|i|o|u/i) == nil
       v = v.split('')
       v = v.rotate(1)
       v = v.join('')
       v = v << "ay"
     end
    end
    end
    word.join(' ')
  end

