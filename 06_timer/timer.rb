class Timer
  #write your code here

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string()
    time_array = []
    format_array = []

    time_array.push(@seconds/3600)
    remainder = @seconds - (time_array[0] * 3600)
    time_array.push(remainder/60)
    remainder -= time_array[1] * 60
    time_array.push(remainder)
    
    for i in time_array
        format_array.push(sprintf '%02d' %i)
    end    
    
    return format_array.join(":")
  end

end
