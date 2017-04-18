class Timer
  attr_accessor :timer, :seconds, :minutes, :hours

  def initialize
  	@seconds = 0
  	@minutes = 0
  	@hours = 0
  end

  def seconds
  	@seconds
  end

  def time_string
  	if @seconds == 0 && @minutes == 0 && @hours == 0
  	"00" + ':' + "00" + ':' + "00"
	elsif @seconds < 60 && @seconds >= 10 && @minutes == 0 && @hours == 0
		"00" + ':' + "00" + ':' + seconds.to_s
	elsif @seconds < 60 && @seconds < 10 && @minutes == 0 && @hours == 0
		"00" + ':' + "00" + ':' + "0" + seconds.to_s
	elsif @seconds > 60 && @seconds < 3600
		@hours = @seconds / 60 / 60
		@minutes = @seconds / 60
		@seconds = @seconds - 60
		if @seconds < 10 && @minutes < 10 
  		"00" + ':' + "0" + @minutes.to_s + ':' + "0" + @seconds.to_s
  		else
  		"00" + ':' + @minutes.to_s + ':' + @seconds.to_s
  		end
  	elsif @seconds > 3600
		@hours = @seconds / 3600
		v = (@seconds - @hours * 3600)
		@minutes = v / 60
		v = v - @minutes * 60
		@seconds = v
		if @seconds < 10 
			@seconds = ("0" + @seconds.to_s)
		end
		if @minutes < 10 
			@minutes = ("0" + @minutes.to_s)
		end
		if @hours < 10 
			@hours = ("0" + @hours.to_s)
		end
		@hours.to_s + ":" + @minutes.to_s + ":" + @seconds.to_s
  		end
  end
end
