def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  greetings = Array.new
  attendees.each do |a|
    greetings.push(badge_maker(a))
  end
  return greetings
end

def assign_rooms(attendees)
  rooms = Array.new
  attendees.each_with_index do |a, index|
    greet = "Hello, #{a}! You'll be assigned to room #{index+1}!"
    rooms.push(greet)
  end
  return rooms
end

def printer(attendees)
    batch_badge_creator(attendees).each do |output|
      puts output
    end
    assign_rooms(attendees).each do |output|
      puts output
    end
end
