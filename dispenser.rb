class Dispenser

  def initialize()
    refill(5)
  end

  def refill(liters)
    @liters = liters
  end

  def dispense()
    if @liters > 0
      @liters -= 1
      puts "#{@liters} liters left"
    else
      puts "No liters left"
    end
  end

end