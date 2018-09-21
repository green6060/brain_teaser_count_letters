@words = []

def menu
  
  puts '1) Your Words'
  puts '2) Exit'
  
  input = gets.to_i
  
  if input === 1
    your_words_menu()
  elsif input === 2
    exit()
  else
    puts 'That entry was not valid. Please try again!'
    menu()
  end

end

def your_words_menu
  puts 'Would you like to...'
  puts '1) Add a word?'
  puts '2) See your words?'
  puts '3) Calculate Repeated Letters?'
  puts '4) Exit'

  input = gets.to_i
  
  if input === 1
    add_word()
  elsif input === 2
    see_words()
  elsif input === 3
    calculate_words()
  elsif input === 4
    exit()
  else
    puts 'That entry was not valid. Please try again!'
    your_words_menu()
  end

end

def add_word
  puts 'Please enter a word, then press "enter"'
  new_word = gets.to_s
  @words << new_word
  your_words_menu()
end

def see_words
  @words.each do |word|
    puts word
  end
  your_words_menu()
end

def calculate_words
  max_letter = 0
  @words.each do |word|
    max_letter_word = word.length - word.uniq.length
    if max_letter < max_letter_word
      max_letter = max_letter_word
    end
  end
  your_words_menu()
end

def exit
end

menu()