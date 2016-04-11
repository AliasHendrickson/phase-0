# Create a Playlist from Driver Code

# I worked on this challenge [with: Jack Thatcher].
# I spent [1.5] hours on this challenge.


# Pseudocode
# DEFINE Song class
# Define Playlist class


# Initial Solution

class Song
 attr_reader :title, :artist

 def initialize(title, artist)
   @title = title
   @artist = artist
 end

 def play
   puts @title
 end
end

class Playlist
 attr_reader :playlist

 def initialize(*song)
   @playlist = song
 end

 def add(*song)
   @playlist.concat(song)
 end

 def num_of_tracks
   @playlist.length
 end

 def remove(song)
   @playlist.delete(song)
 end

 def includes?(song)
   @playlist.include?(song)
 end

 def play_all
   puts "Playing now:"
   @playlist.each { |song| puts "#{song.title} by #{song.artist}" }
 end

 def display
   puts "Songs on playlist: "
   @playlist.each { |song| puts "#{song.title} by #{song.artist}" }
 end
end


# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
p my_playlist
my_playlist.add(lying_from_you, angels)
p "TEST"
p my_playlist
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
=begin
What concepts did you review in this challenge?
  I reviewed classes, instance variables/methods, attr_reader/writer methods.

What is still confusing to you about Ruby?
  Exactly how objects take arguments from each other and work with certain return values is still a little hazy.
  Specifically with instance methods and what needs to get passed as an argument.
  Like, when a new instance of Song was initialized, and those values were captured in a local variable, and then we had to add those variables into new instances of Playlist.
  Keeping up with what methods we could use on which types of objects got a bit confusing, but it's still pretty straightforward when we break it down.

What are you going to study to get more prepared for Phase 1?
  Whatever review material I have left. Probably classes because
  I feel like they are going to be used very often.
=end