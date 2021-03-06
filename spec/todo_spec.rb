require('rspec')
require('todo')

describe(Todo) do
  before() do
    Todo.clear()
  end
  
  describe("#description") do
    it("lets you give a description") do
      test_task = Todo.new("commit the code")
      expect(test_task.description()).to(eq("commit the code"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Todo.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Todo.new("write new spec")
      test_task.save()
      expect(Todo.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tasks") do
      Todo.new("Green onions please.").save()
      Todo.clear()
      expect(Todo.all()).to(eq([]))
    end
  end

end
