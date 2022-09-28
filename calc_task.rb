class CalcTask

  #Запрашиваем у пользователя два числа, с которыми необходимо провести действия
  puts "Введите первое число:"
  FirstNumber = gets.chomp.to_i

  puts "Введите второе число:"
  SecondNumber = gets.chomp.to_i

  puts "Выберите арифметическое действие:"
  puts "1 - сложение (*)"
  puts "2 - вычитание (-)"
  puts "3 - умножение (*)"
  puts "4 - деление (/)"

  UserChoice = gets.chomp.to_i

  case UserChoice
  when 1
    Sum = FirstNumber + SecondNumber
    puts "#{FirstNumber} + #{SecondNumber} = #{Sum}"

  when 2
    Substract = FirstNumber - SecondNumber
    puts "#{FirstNumber} - #{SecondNumber} = #{Substract}"

  when 3
    Prod = FirstNumber * SecondNumber
    puts "#{FirstNumber} * #{SecondNumber} = #{Prod}"

  when 4
    #обработка исключения деления на 0
    begin
      Quot = FirstNumber / SecondNumber
      puts "#{FirstNumber} / #{SecondNumber} = #{Quot}"
    rescue  ZeroDivisionError
      puts "На 0 делить нельзя!"
    end

  else #если пользователь ввёл числа не 1-4, то программа выводит следующее сообщение
    puts "Неизвестная команда."
  end
end
