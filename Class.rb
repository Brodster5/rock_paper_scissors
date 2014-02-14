
prompt = "> "
puts "You are now playing rock, paper, scissors against Ruby. Pick a weapon!"
print prompt 
input = gets.chomp.downcase

def paper_array
  (1..10).to_a
end

def rock_array
  (11..21).to_a
end

def scissors_array
  (22..32).to_a
end


def computer_choice()
  ruby_input = rand(1..32)
  if paper_array.include?(ruby_input)
    ruby_input == "paper"
  elsif rock_array.include?(ruby_input)
    ruby_input == "rock"
  elsif scissors_array.include?(ruby_input)
    ruby_input == "scissors"
  else
    "Wrong weapon! Pick again."
  end
end

def compare(input, ruby_input)
  if input == ruby_input
    return "You tied! Good try ;)"
 elsif input == "rock"
  if ruby_input == "paper"
    return "Paper wins!"
  else 
    return "Rock wins!"
  end
  elsif input == "paper"
    if ruby_input == "scissors"
      return "Scissors wins!"
    else 
      return "Paper wins!"
    end
    elsif input == "scissors"
      if ruby_input == "paper"
        return "Scissors wins!"
      else 
        return "Rock wins!"
    end
  end
end

puts compare(input, computer_choice)