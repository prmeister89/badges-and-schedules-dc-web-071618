def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  new_array = []
  array.each do |name|
    new_array << badge_maker(name)
  end
  return new_array
end

def assign_rooms(array)
  new_array = []
    array.each_with_index do |name, room|
      new_array << "Hello, #{name}! You'll be assigned to room #{room+1}!"
    end
    return new_array
end

def printer
  badge_array = []
  room_array = []
  
  batch_badge_creator.each_with_index do |item, index|
    badge_array << batch_badge_creator(index+1)
  end
  
  assign_rooms.each_with_index do |item, index|
    room_array << assign_rooms(index+1)
  end
  
 
  batch_badge_creator.gets.chomp |item, index|
  assign_rooms.gets.chomp |item, index|
    

end