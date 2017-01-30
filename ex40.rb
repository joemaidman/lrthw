class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end

  def sing_me_a_song_backwards()
    @lyrics.reverse.each {|line| puts line}
  end

  def sing_me_a_song_without_vowels()
    @lyrics.each {|line|
      puts line.delete 'aeiou'}
  end
end
bday_array = ["Happy birthday to you",
                "I don't want to get sued",
                "So I'll stop right there"]
happy_bday = Song.new(bday_array)

bulls_array = ["They rally around tha farmily",
                "With pockets full of shells"]
bulls_on_parade = Song.new(bulls_array)

milkshake_array = ["My pokemon brings all the nerds to the yard",
                "and they're like you wanna trade cards?",
              "Damn right! I wanna trade cards!",
            "I'll trade you this but not my chezard."]
milkshake = Song.new(milkshake_array)

milkshake_array = ["My pokemon brings all the nerds to the yard",
                "and they're like you wanna trade cards?",
              "Damn right! I wanna trade cards!",
            "I'll trade you this but not my chezard."]
milkshake = Song.new(milkshake_array)

hand_in_glove_array = ["Hand in glove",
                "The sun shines out of our behinds",
              "No, it's not like any other love",
            "This one is different - because it's us"]

hand_in_glove = Song.new(hand_in_glove_array)
puts '-' * 10
puts "Singing Happy Birthday"
puts '-' * 10
happy_bday.sing_me_a_song()
puts '-' * 10
puts "Singing Bulls on Parade"
puts '-' * 10
bulls_on_parade.sing_me_a_song()
puts '-' * 10
puts "Singing Milkshake"
puts '-' * 10
milkshake.sing_me_a_song()
puts '-' * 10
puts "Singing Milshake backwards"
puts '-' * 10
milkshake.sing_me_a_song_backwards()
puts '-' * 10
puts "Singing Milshake without vowels"
puts '-' * 10
milkshake.sing_me_a_song_without_vowels()
puts '-' * 10
puts "Singing Hand in Glove"
puts '-' * 10
hand_in_glove.sing_me_a_song()
puts '-' * 10
puts "Singing Hand in Glove backwards"
puts '-' * 10
hand_in_glove.sing_me_a_song_backwards()
puts '-' * 10
puts "Singing Hand in Glove without vowels"
puts '-' * 10
hand_in_glove.sing_me_a_song_without_vowels()
puts '-' * 10
