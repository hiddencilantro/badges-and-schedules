def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    speakers.collect {|names|badge_maker(names)}
end

def assign_rooms(speakers)
    rooms = []
    number = 1
    speakers.each do |speaker|
        rooms << "Hello, #{speaker}! You'll be assigned to room #{number}!"
        number += 1
    end
    rooms
end

def printer(speakers)
    batch_badge_creator(speakers).each do |prt|
        puts prt
    end
    assign_rooms(speakers).each do |prt|
        puts prt
    end
end
