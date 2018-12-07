require_relative "room"

class Hotel
  def initialize(name, rooms)
    @name = name
    @rooms = rooms.each {|key, value| rooms[key] = Room.new(value)}
  end

  def name
    @name.split.map(&:capitalize).join(' ')
    end

  def rooms
    @rooms
  end

  def room_exists?(room_name)
    if @rooms.key?(room_name)
      return true
    end
    false

  end

  def check_in(person, room_name)
   if room_exists?(room_name)
    if rooms[room_name].full?
      puts "sorry, room is full"
    else
      rooms[room_name].add_occupant(person) unless rooms[room_name].full?
      puts "check in successful!"
   end
  else

  puts "sorry, that room doesn't exist"
  end
end

  def has_vacancy?
    @rooms.values.any? { |room| !room.full?}
  end

  def list_rooms
    @rooms.each {|name, room| puts "#{name}: #{room.available_space}"}
  end

end
