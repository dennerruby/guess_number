require_relative 'screen_initialization'
require_relative 'draw_number'

class GuessNumber
    attr_accessor :number
    attr_accessor :win

    def initialize
      ScreenInitialization.initializing
      @number = DrawNumber.draw
      @win = false
    end

    def try_guess(number = 0)
      if number == @number
        @win = true
        return "๐จ ๐ ๐ค ๐ฆ ๐ ๐ (เธ๏ธก'-'๏ธ )เธ"
      elsif number > @number
        return "\n The number given is too high... (โโฟโฟโ)"
      else
        return "\n The number given is too low.... (อ โ_โแท )"
      end
    end
  end
