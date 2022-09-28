class CalcTask

  #Запрашиваем у пользователя два числа, с которыми необходимо провести действия
  puts "Введите первое число:"
  FirstNumber = gets.chomp

  #Проверяем ввёл ли пользователь числа или символы
  A = Integer(FirstNumber) rescue false
  if A
    true
  else
    abort "Недопустимое значение."
  end

  puts "Введите второе число:"
  SecondNumber = gets.chomp

  B = Integer(SecondNumber) rescue false
  if B
    true
  else
    abort "Недопустимое значение."
  end

  puts "Выберите арифметическое действие:"
  puts "1 - сложение (*)"
  puts "2 - вычитание (-)"
  puts "3 - умножение (*)"
  puts "4 - деление (/)"

  UserChoice = gets.chomp.to_i

  case UserChoice
  when 1
    Sum = A + B
    puts "#{A} + #{B} = #{Sum}"

  when 2
    Substract = A - B
    puts "#{A} - #{B} = #{Substract}"

  when 3
    Prod = A * B
    puts "#{A} * #{B} = #{Prod}"

  when 4
    #обработка исключения деления на 0
    begin
      Quot = A / B
      puts "#{A} / #{B} = #{Quot}"
    rescue  ZeroDivisionError
      puts "На 0 делить нельзя!"
    end

  else #если пользователь ввёл числа не 1-4, то программа выводит следующее сообщение
    puts "Неизвестная команда."
  end
end
