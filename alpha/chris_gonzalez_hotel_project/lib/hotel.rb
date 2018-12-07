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
   self.room_exists?(room_name)

   end

end
