haunted_hallows_hotel = Hotel.new

# guests
# nickname, full_name, age, gender, investigator, believer, tech, psychic, bio
guest_list = [
    ["guest1", "Luke Skywalker", 28, "Male", 3, 5, 2, 5, "Trying to balance the force."],
    ["guest2", "Ganondorf", 76, "Male", 3, 2, 4, 2, "King of Hyrule."],
    ["guest3", "Aerith Gainsborough", 19, "Female", 5, 3, 1, 3, "We can, we will."],
    ["guest4", "Thomas A. Anderson", 36, "Male", 2, 3, 1, 4, "There's only one."],
    ["guest5", "Elliot Alderson", 26, "Male", 1, 5, 5, 5, "You did good kiddo."]
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
# max_guests, private, guest_id, room_id
booking_list = [
    [3, ]
]