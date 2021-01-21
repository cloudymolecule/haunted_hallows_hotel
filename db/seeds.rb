Hotel.destroy_all
Guest.destroy_all
Room.destroy_all
Booking.destroy_all
Haunting.destroy_all
VisitorLog.destroy_all

haunted_hallows_hotel = Hotel.create(name: "Haunted Hallows Hotel")

# guests
# nickname, full_name, age, gender, investigator, believer, tech, psychic, bio
guest_list = [
    ["guest1", "Luke Skywalker", 28, "Male", 3, 5, 2, 5, "Trying to balance the force."],
    ["guest2", "Ganondorf", 76, "Male", 3, 2, 4, 2, "King of Hyrule."],
    ["guest3", "Aerith Gainsborough", 19, "Female", 5, 3, 1, 3, "We can, we will."],
    ["guest4", "Thomas A. Anderson", 36, "Male", 2, 3, 1, 4, "There's only one."],
    ["guest5", "Elliot Alderson", 26, "Male", 1, 5, 5, 5, "You did good kiddo."],
    ["guest6", "Maria Juliette", 43, "Female", 3, 5, 2, 5, "Nursing Student."],
    ["guest7", "Andrew Pascale", 32, "Non-binary", 3, 2, 4, 2, "Ouija Aficionado."],
    ["guest8", "Marco Troy", 33, "Male", 5, 3, 1, 3, "I beleive in everything."],
    ["guest9", "Andrea Justa", 25, "Female", 2, 3, 1, 4, "The truth is out there."],
    ["guest10", "Jake Gabriel", 54, "Male", 1, 5, 5, 5, "Student of the thing called life."],
    ["guest11", "Fernando Calandra", 31, "Male", 3, 5, 2, 5, "Biochemist by trade."],
    ["guest12", "Paris Hills", 22, "Female", 3, 2, 4, 2, "Fashion is my life."],
    ["guest13", "McKayla Wallace", 45, "Non-binary", 5, 3, 1, 3, "Old-school witch."],
    ["guest14", "Priscilla Nada", 25, "Female", 2, 3, 1, 4, "Sorceress in training."],
    ["guest15", "Gabriel Lacoste", 25, "Other", 1, 5, 5, 5, "Skater by day, Batman by night."],
    ["guest16", "Princess Mononoke", 18, "Female", 3, 5, 2, 5, "Princess of another world."],
    ["guest17", "Christopher Lloyd", 68, "Male", 3, 2, 4, 2, "Actor, time traveler."],
    ["guest18", "Marcela Gutierrez", 47, "Female", 5, 3, 1, 3, "There's a plan for all of us."],
    ["guest19", "Ramachandra Patel", 38, "Male", 2, 3, 1, 4, "People say I'm an amazing cook."],
    ["guest20", "Troy Lincoln", 26, "Male", 1, 5, 5, 5, "Martial artist, watch out ghosts."],
]

guest_list.each do |nickname, full_name, age, gender, investigator, believer, tech, psychic, bio |
    Guest.create(
        nickname: nickname,
        full_name: full_name,
        age: age,
        gender: gender,
        investigator: investigator,
        believer: believer,
        tech: tech,
        psychic: psychic,
        bio: bio
    )
end

# rooms
# floor, number, board, do_not_disturb, note, hotel_id
room_list = [
    [1, 101, "I'm bored", false, "Convince me of paranormal stuff", 1],
    [2, 201, "Efficacy of EMF detectors", false, "researching equipment, serious pleople only.", 1],
    [3, 301, "Sensing energies in the basement", true, "Investigating Noises", 1],
    [4, 401, "Looking for friend to investigate cemetery", false, "Let's meet up", 1],
    [5, 501, "weird dream?", false, "Dreams discussion", 1],
    [6, 601, "Ouija board anyone?", true, "Not for the faint of heart", 1],
    [1, 102, "Got new sneakers!", false, "Just making conversation", 1],
    [2, 202, "EVP phenomena question", false, "help me out, weird recording.", 1],
    [3, 302, "I can see Auras", false, "Auras are my thing", 1],
    [4, 402, "My house is haunted, please keep me company", false, "Help!!", 1],
    [5, 502, "I hear chains rattling at night", true, "sounds at night", 1],
    [6, 602, "Let's play with the Necronomicon!", true, "Necronomicon, beware!", 1]
]

room_list.each do |floor, number, board, do_not_disturb, note, hotel_id|
    Room.create(
        floor: floor,
        number: number,
        board: board,
        do_not_disturb: do_not_disturb,
        note: note,
        hotel_id: hotel_id
        )
end

# booking
# max_guests, guest_id, room_id
booking_list = [
    [3,1,1],[1,2,2],[4,3,3],[8,4,4],[1,5,5],
    [1,6,6],[2,7,7],[6,8,8],[7,9,9],[1,10,10],
    [1,11,11],[3,12,0],[9,13,1],[9,14,2],[1,15,3],
    [4,16,4],[6,17,5],[3,18,6],[2,19,7],[9,0,8]
]

booking_list.each do | max_guests, guest_id, room_id |
    Booking.create(max_guests: max_guests, guest_id: guest_id, room_id: room_id)
end

# haunting
# public, description, classification, location, room_id, guest_id
hauntings_list = [
    [false, "rattling chains", 0, "My house", 0, 1],
    [true, "Apparation", 0, "Abandoned warehouse", 2, 2],
    [true, "Flying orb", 5, "Garden Outside, NJ", 3, 3],
    [false, "Recurring dream", 1, "In my dreams", 3, 8],
    [true, "Demonic posession", 2, "Watchung Reservation, NJ", 4, 10],
    [true, "Something touched my back", "paranormal", "NY", 5, 12],
    [true, "UFO in the sky??", 3, "Backyard", 6, 9],
    [false, "Child ghost", 0, "In my room", 7, 0],
    [true, "Deja Vu", 1, "In school", 8, 16,],
    [true, "Orbs in photos", 0, "Somewhere in Ontario", 9, 15]
]

hauntings_list.each do | common, description, classification, location, room_id, guest_id |
    Haunting.create(
        common: common,
        description: description,
        classification: classification,
        location: location,
        room_id: room_id,
        guest_id: guest_id
    )
end

visitor_logs = [
    ["Awesome", 1, 3],
    ["Love the Hotel", 1, 5],
    ["Too weird for me", 1, 6],
    ["Priscilla was here", 1, 13],
    ["Nice", 1, 8],
    ["Nothing to say", 1,15]
]

visitor_logs.each do |entry, hotel_id, guest_id|
    VisitorLog.create(entry: entry, hotel_id: hotel_id, guest_id: guest_id)
end