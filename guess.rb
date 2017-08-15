def guess_number guess
    number = 25
    if guess < number
        puts 'too low'
    elsif guess > number
        puts 'too high'
    else
        puts 'you got it'
    end
end

guess_number 25
