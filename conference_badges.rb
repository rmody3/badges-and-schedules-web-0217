# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  badgeMessages = []
  for name in speakers
    badgeMessages << badge_maker(name)
  end
  badgeMessages
end

def assign_rooms(speakers)
  rooms = []
  speakers.each_with_index {|val, index| rooms << "Hello, #{val}! You'll be assigned to room #{index+1}!"}
  rooms
end

def printer(speakers)
  batchBadgeMessages = batch_badge_creator(speakers)
  batchBadgeMessages.each {| badge | puts badge}
  assignRooms = assign_rooms(speakers)
  assignRooms.each {| room | puts room}
end
