songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def say_hello(name)
  "Hi #{name}!"
end

def help
  puts "(Bring up the help command=.*help)(Lists all songs=.*list)(Plays a song=.*play)(Leaves=.*exit)"
end

def list (songs)
  all_song = songs.join(", ")
  puts all_song
end

def play (songs)
  selection = gets.chomp
    if songs.include?(selection) || (songs[selection.to_i] && selection.to_i != 0)
      songs.each do |track|
        if track == selection || track == songs[selection.to_i - 1]
          puts "#{track}"
        end
      end
    else 
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye!"
end

def run (songs)
  # puts "Enter your name:"
  # users_name = gets.chomp

  # puts say_hello(users_name)
  puts "Please enter a command:"
  instruction = gets.chomp

  until instruction == "exit"
    if instruction == "help"
      puts help
      puts "What would you like to do?"
      instruction = gets.chomp
    end
    if instruction == "list"
      puts list
      puts "What would you like to do?"
      instruction = gets.chomp
    end
    if instruction == "play"
      play
      puts "What would you like to do?"
      instruction = gets.chomp
    end
    if instruction == "exit"
      exit_jukebox
    end
  end
end






