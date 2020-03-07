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

# # songsplit = songs.map {|item| 
# #   item.split("- ")[1]
# }
# Add your code here

def get_user
gets.strip
end

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def play(songs)
puts "Please enter a song name or number:"
user_choice = get_user.to_s
songs.each_with_index {|item, index|
indexstr = (index+1).to_s
if item == user_choice
  puts "Playing #{item}"
  return
elsif
  indexstr == user_choice
  puts "Playing #{item}"
  return
end
}
puts "Invalid input, please try again"
end

def list(songs)
  counter=1
songs.each {|item|
  puts "#{counter}. #{item}" 
counter+=1
}
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
puts "Please enter a command:"
user_selection = get_user.to_s
while user_selection != "exit" do
if user_selection == "help"
  help
elsif  user_selection == "play"
  play(songs)
elsif  user_selection == "list"
  list(songs)
end
puts "Please enter a command:"
user_selection = get_user.to_s
end
exit_jukebox
end

# run