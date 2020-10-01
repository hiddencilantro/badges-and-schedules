def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    speakers.collect {|name| badge_maker(name)}
end

def assign_rooms(speakers)
    room = []
    speakers.each_with_index do |speaker, room_number|
        room << "Hello, #{speaker}! You'll be assigned to room #{room_number+1}!"
    end
    room
end

def printer(speakers)
    batch_badge_creator(speakers).each{|badge| puts badge}
    assign_rooms(speakers).each{|room| puts room}
end
