# run >> rake db:drop db:create db:migrate >> from terminal before seeding database


guest_list = [
    ["guest1", "luke@hhh.com", 28, "Male", 3, 5, 2, 5, "Trying to balance the force.", "12345678", "12345678"],
    ["guest2", "ganondorf@hhh.com", 76, "Male", 3, 2, 4, 2, "King of Hyrule.", "12345678", "12345678"],
    ["guest3", "aerith@hhh.com", 19, "Female", 5, 3, 1, 3, "We can, we will.", "12345678", "12345678"],
    ["guest4", "thomas@hhh.com", 36, "Male", 2, 3, 1, 4, "There's only one.", "12345678", "12345678"],
    ["guest5", "elliot@hhh.com", 26, "Male", 1, 5, 5, 5, "You did good kiddo.", "12345678", "12345678"],
    ["guest6", "maria@hhh.com", 43, "Female", 3, 5, 2, 5, "Nursing Student.", "12345678", "12345678"],
    ["guest7", "andrew@hhh.com", 32, "Non-binary", 3, 2, 4, 2, "Ouija Aficionado.", "12345678", "12345678"],
    ["guest8", "marco@hhh.com", 33, "Male", 5, 3, 1, 3, "I believe in everything.", "12345678", "12345678"],
    ["guest9", "andrea@hhh.com", 25, "Female", 2, 3, 1, 4, "The truth is out there.", "12345678", "12345678"],
    ["guest10", "jake@hhh.com", 54, "Male", 1, 5, 5, 5, "Student of the thing called life.", "12345678", "12345678"],
    ["guest11", "fernando@hhh.com", 31, "Male", 3, 5, 2, 5, "Biochemist by trade.", "12345678", "12345678"],
    ["guest12", "paris@hhh.com", 22, "Female", 3, 2, 4, 2, "Fashion is my life.", "12345678", "12345678"],
    ["guest13", "mcKayla@hhh.com", 45, "Non-binary", 5, 3, 1, 3, "Old-school witch.", "12345678", "12345678"],
    ["guest14", "priscilla@hhh.com", 25, "Female", 2, 3, 1, 4, "Sorceress in training.", "12345678", "12345678"],
    ["guest15", "gabriel@hhh.com", 25, "Other", 1, 5, 5, 5, "Skater by day, Batman by night.", "12345678", "12345678"],
    ["guest16", "princess@hhh.com", 18, "Female", 3, 5, 2, 5, "Princess of another world.", "12345678", "12345678"],
    ["guest17", "christopher@hhh.com", 68, "Male", 3, 2, 4, 2, "Actor, time traveler.", "12345678", "12345678"],
    ["guest18", "marcela@hhh.com", 47, "Female", 5, 3, 1, 3, "There's a plan for all of us.", "12345678", "12345678"],
    ["guest19", "ramachandra@hhh.com", 38, "Male", 2, 3, 1, 4, "People say I'm an amazing cook.", "12345678", "12345678"],
    ["guest20", "troy@hhh.com", 26, "Male", 1, 5, 5, 5, "Martial artist, watch out ghosts.", "12345678", "12345678"]
]

guest_list.each do |username, email, age, gender, investigator, believer, tech, psychic, bio, password, password_confirmation |
    Guest.create(
        username: username,
        email: email,
        age: age,
        gender: gender,
        investigator: investigator,
        believer: believer,
        tech: tech,
        psychic: psychic,
        bio: bio,
        password: password,
        password_confirmation: password_confirmation
    )
end

room_list = [
    [1, 101, 3, false, "Convince me of paranormal stuff"],
    [2, 201, 4, false, "researching equipment, serious pleople only."],
    [3, 301, 1, true, "Investigating Noises"],
    [4, 401, 2, false, "Let's meet up"],
    [5, 501, 4, false, "Dreams discussion"],
    [6, 601, 2, true, "Not for the faint of heart"],
    [1, 102, 10, false, "Just making conversation"],
    [2, 202, 8, false, "help me out, weird recording."],
    [3, 302, 6, false, "Auras are my thing"],
    [4, 402, 3, false, "Help!!"],
    [5, 502, 1, true, "sounds at night"],
    [6, 602, 1, true, "Necronomicon, beware!"]
]

room_list.each do |floor, number, max_guests, do_not_disturb, note|
    Room.create(
        floor: floor,
        number: number,
        max_guests: max_guests,
        do_not_disturb: do_not_disturb,
        note: note
        )
end

booking_list = [
    [1,1],[2,2],[3,3],[4,4],[5,5],
    [6,6],[7,7],[8,8],[9,9],[10,10],
    [11,11],[12,5],[13,1],[14,2],[15,3],
    [16,4],[17,5],[18,6],[19,7],[5,8]
]

booking_list.each do | guest_id, room_id |
    Booking.create(guest_id: guest_id, room_id: room_id)
end

hauntings_list = [
    ["chains", false, "rattling chains", 0, "My house", 5, 1],
    ["Scary Ghost",true, "Apparation", 0, "Abandoned warehouse", 2, 2],
    ["Orb",true, "Flying orb by my house", 5, "Garden Outside, NJ", 3, 3],
    ["Dream",false, "Recurring dream", 1, "In my dreams", 3, 8],
    ["Demons?? What??",true, "Demonic posession", 2, "Watchung Reservation, NJ", 4, 10],
    ["Weird experience",true, "Something touched my back", "paranormal", "NY", 5, 12],
    ["Aliens!",true, "UFO in the sky??", 3, "Backyard", 6, 9],
    ["Ghost",false, "Child ghost", 0, "In my room", 7, 5],
    ["Deja vu",true, "I remember something that didn't happen", 1, "In school", 8, 16,],
    ["I have evidence",true, "Orbs in photos, I have a bunch", 0, "Somewhere in Ontario", 9, 15]
]

hauntings_list.each do | name, common, description, classification, location, room_id, guest_id |
    Haunting.create(
        name: name,
        common: common,
        description: description,
        classification: classification,
        location: location,
        room_id: room_id,
        guest_id: guest_id
    )
end

comments_list = [
    ["Awesome", 3, 2],
    ["Love the Hotel", 5, 5],
    ["Too weird for me", 6, 3],
    ["Priscilla was here", 13, 8],
    ["Nice", 8, 4],
    ["Nothing to say",15, 7]
]

visitor_logs.each do |entry, guest_id, room_id|
    VisitorLog.create(entry: entry, guest_id: guest_id, room_id: room_id)
end

boards_list = [
    [1,1], [2,2], [3,3], [4,4], [5,5]
]

boards_list.each do |room_id, comment_id|
    Board.create(room_id: room_id, comment_id: comment_id)
end