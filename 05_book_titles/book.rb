class Book

	attr_accessor :title

	def title
		@title = @title.split(' ')
		@title.map! do |i|
			if i.match(/\Aand\z|of|\Aa\z|the|\Ain\z|\Aan\z|over/i)
				i = i
			else
				i = i.capitalize
			end	
		end
		
		@title[0] = @title[0].capitalize
		@title = @title.join(' ')
		
	end

end
