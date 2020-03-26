describe(User) do

    it("can create or find a user by name") do
      User.create({name: "Ruth"})
      user = User.find_by({ name: 'Ruth' })
      expect(user.name).to(eq('Ruth'))
    end

    it ("raises error if username not found")do
      User.find_by({name: "Isaac"})
      expect{raise StandardError}.to raise_error
    end


end
