# A text adventure. Structure based on https://www.gitbook.com/book/jsrn/make-your-first-text-adventure-in-ruby/details tutorial
$prizeroom = [[*0..10].sample,[*0..10].sample]
#$prizeroom = [1,0]
$player
class Player
  attr_accessor :hit_points, :attack_power
  attr_accessor :x_coord, :y_coord

  MAX_HIT_POINTS = 100

  def initialize
    @hit_points = MAX_HIT_POINTS
    @attack_power = 1
    @x_coord, @y_coord = 0,0
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def heal(amount)
    @hit_points += amount
    @hit_points = [@hit_points, MAX_HIT_POINTS].min
  end

  def print_status
    puts "----------"
    puts "HP: #{@hit_points} / #{MAX_HIT_POINTS}"
    puts "AP: #{attack_power}"
    puts "----------"
  end

  def name
    @name
  end
end

class Item
  TYPES = [:potion, :sword]

  attr_accessor :type

  def initialize(grail = false)
    grail == true ? (@type = :GRAIL) : (@type = TYPES.sample)
  end

  def interact(player)
    puts "----------"
    case @type
    when :potion
      puts "You found a #{self} (+10 HP)."
      player.heal(10)
    when :sword
      puts "You found a #{self} (+1 AP)."
      player.attack_power += 1
    when :GRAIL
    puts "You found THE HOLY GRAIL!!!!"
    puts File.read("gameart/holy_grail.txt")
    puts "Now you need to escape back to the entrance at <0,0>."
    #@game.game_over(1)
    end
    puts "----------"
  end

  def to_s
    "A shiny new #{@type.to_s}"
  end
end

class Bear
  attr_accessor :hit_points, :attack_power

  MAX_HIT_POINTS = 10

  def initialize
    @hit_points = MAX_HIT_POINTS
    @attack_power = 1
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def to_s
    "A giant grizzly bear!"
  end

  def interact(player)
    puts "Prepare for battle..."
    sleep(1)
    while player.alive?
      #Get the player's hit points and add a random amount between 0 and 10
      playerHit = player.attack_power + [*0..10].sample
      hurt(playerHit)
      # Display damage and how much health the enemy has
      puts "You hit the bear for #{playerHit} points. (#{[@hit_points, 0].max}/ #{MAX_HIT_POINTS})"
      sleep(1)
      #Get the enemies hit points and add a random amount between 0 and 5
      enemyHit = player.attack_power + [*0..5].sample
      # Is the enemy dead?
      unless alive?
        puts "The bear falls to the ground. It is dead."
        break
      end
      player.hurt(enemyHit)
      # Display damage and how much health the player has
      puts "The bear hits you for #{enemyHit} points. (#{[player.hit_points, 0].max}/ #{Player::MAX_HIT_POINTS})"
      sleep(1)
    end
  end
end

class World
W_HEIGHT = 10
W_WIDTH = 10

  def initialize
    @rooms = Array.new(W_HEIGHT, Array.new(W_WIDTH))
  end

  def print_map(x, y)

    index_row = 0
    W_HEIGHT.times do
      index_col = 0
      W_WIDTH.times do
        if index_col == x && index_row == y
          index_col == 9 ? (puts "O") : (print "O")
        else
        index_col == 9 ? (puts "X") : (print "X")
      end
        index_col +=1
      end
      index_row += 1
    end

  end

  def move_north(entity)
    entity.y_coord -= 1 if entity.y_coord > 0
  end

  def move_south(entity)
    entity.y_coord += 1 if entity.y_coord < W_HEIGHT - 1
  end

  def move_east(entity)
    entity.x_coord += 1 if entity.y_coord < W_WIDTH - 1
  end

  def move_west(entity)
    entity.x_coord -= 1 if entity.y_coord > 0
  end

  def get_rooms_of(entity)
    @rooms[entity.x_coord][entity.y_coord] ||= Room.new
  end
end

class Room
  attr_accessor :size, :content

  def initialize
    if $player.x_coord == $prizeroom[1] && $player.y_coord == $prizeroom[0]
      puts "Setting item to the grail!!!"
      @content = get_grail
    else
      @content = get_content
    end
    @size = get_size
    @adjective = get_adjective
    fight(@content) if @content.class == Bear
  end

  def fight(enemy)

    puts "There is a #{enemy}"
    puts "----------"
    interact($player)
  end

  def interact(player)
    if @content
      @content.interact(player)
      @content = nil
    end
  end

  def to_s
    "You are in a #{@size} room. It is #{@adjective}."
  end

  private
  def get_content
      [Bear, Item].sample.new
  end

  def get_grail
      Item.new(true)
  end

  def get_size
    ["small","medium", "large"].sample
  end

  def get_adjective
    ["pretty", "ugly", "hideous"].sample
  end
end

class Game

  ACTIONS = [:north, :east, :south, :west, :look, :fight, :take, :status, :map, :help]

  def initialize
    $player = Player.new
    @world = World.new

    start_game
  end

  private
  def start_game
    puts File.read("gameart/logo.txt")
    puts "You find yourself at the entrance to a vast and menacing underground labyrinth."
    puts "Somewhere in this maze of rooms is The Holy Grail. There will be dangers along the way."
    puts "Type 'help' at any point to see a list of commands you can use to control the player"
    puts "Good Luck!!"
    puts "Press Enter to begin."
    gets.chomp

    while $player.alive?
      @current_room = @world.get_rooms_of($player)

      print_status

      action = take_player_input

      if !ACTIONS.include? action
        puts "That is not a valid action."
        next
      end

      if (action == :take) && (@current_room.content.nil?)
        puts "There is nothing to take!"
      end

      take_action(action)

    end
  end

  def show_map(x, y)
    @world.print_map(x, y)
  end

  def take_player_input
    puts "----------"
    puts "Grail @: #{$prizeroom[1]} , #{$prizeroom[0]}"
    print "What do you want to do?"
    gets.chomp.to_sym
  end

  def print_status
    puts "You are at coordinates <#{$player.x_coord},#{$player.y_coord}>"
    puts @current_room
    if @current_room.content
      puts "You see #{@current_room.content}."
    end
  end

  def print_help
    puts "Here is a list of commands you can use to control the player:"
    puts ACTIONS.inspect
  end

  def take_action(action)
    case action
    when :look
      print_status
    when :map
      show_map($player.x_coord, $player.y_coord)
    when :help
      print_help
    when :north
      @world.move_north($player)
    when :east
      @world.move_east($player)
    when :south
      @world.move_south($player)
    when :west
      @world.move_west($player)
    when :take
      @current_room.interact($player)
    when :status
      $player.print_status
    end
  end
end
# Start the game
Game.new
