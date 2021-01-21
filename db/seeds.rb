haunted_hallows_hotel = Hotel.new



# guests
# nickname, full_name, age, gender, investigator, believer, tech, psychic, bio
guest_list = [
    ["guest1", "Luke Skywalker", 28, "Male", 3, 5, 2, 5, "Trying to balance the force."],
    ["guest2", "Ganondorf", 76, "Male", 3, 2, 4, 2, "King of Hyrule."]
    ["guest3", "Aerith Gainsborough", 19, "Female", 5, 3, 1, 3, "We can, we will."]
    ["guest4", "Thomas A. Anderson", 36, "Male", 2, 3, 1, 4, "There's only one."]
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

