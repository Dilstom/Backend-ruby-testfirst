require 'time'

class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = Time.at(@seconds).utc
    new_time_format = time.strftime("%H:%M:%S")
    new_time_format
  end
end
