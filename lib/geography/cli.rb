class Geography::CLI
  attr_accessor :sell
  def call
  continent
  list
  bye
  end

  def continent
    puts "Number of countries per continent"
    puts ""
    @sell = Geography::Sell.right_now
    # @sell.each.with_index(1) do |sell, i|
      # puts "#{i}. #{sell.name} - - #{sell.availability}"

  end
  def list
    input = nil

    while input != 'exit'
      puts "1. Continent of Africa"
      puts "2. Continent of Asia"
      puts "3. Continent of Europe"
      puts "4. Continent of North America"
      puts "5. Continent of Oceania"
      puts "6. Continent of South America"
      puts "--------------------------"
      puts "Choose one continent or exit to log off "

      input = gets.strip.downcase

      puts "-------------------------"
      case input
      when "1"
      puts "#{@sell[0].name}"
      puts "-------------------------"

      when "2"

          puts "#{@sell[0].name1}"
      puts "-------------------------"

      when "3"
      puts "#{@sell[0].name2}"
      puts "-------------------------"

      when "4"
      puts "#{@sell[0].name3}"
      puts "-------------------------"

      when "5"
      puts "#{@sell[0].name4}"
      puts "-------------------------"

      when "6"
      puts "#{@sell[0].name5}"
      puts "-------------------------"
    else
      puts "Please choose one continent"
      puts "-------------------------"
    end
    end
    def bye
      puts "See you next"
     end
   end
end
