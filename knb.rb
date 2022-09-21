class KNB

  Choice_arr = [:rock, :paper, :scissors]
  ComputerChoice = Choice_arr[rand(1..3)]
  puts('Choose your number:')
  puts('1 - rock')
  puts('2 - paper')
  puts('3 - scissors')

  Choice = gets.to_i
  UserChoice = Choice_arr[Choice-1]

  if(ComputerChoice == UserChoice || UserChoice == ComputerChoice)
    print("Your choice is #{UserChoice}\n")
    print("Computer's choice is #{ComputerChoice}\n")
    print("Nobody win!\n")
  end

  if((ComputerChoice  == :rock && UserChoice == :scissors) ||
    (ComputerChoice == :scissors && UserChoice == :paper) ||
    (ComputerChoice == :paper && UserChoice == :rock))
    print("Your choice is #{UserChoice}\n")
    print("Computer's choice is #{ComputerChoice}\n")
    print("You lost!\n")
  end

  if((UserChoice == :rock && ComputerChoice == :scissors) ||
    (UserChoice == :scissors && ComputerChoice == :paper) ||
    (UserChoice == :paper && ComputerChoice == :rock))
    print("Your choice is #{UserChoice}\n")
    print("Computer's choice is #{ComputerChoice}\n")
    print("You win!\n")
  end
  end
