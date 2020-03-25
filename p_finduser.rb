def find_user
    if User.find_by(name: $name_input)
        User.find_by(name: $name_input)
    else
        User.create(name: $name_input)
    end
end