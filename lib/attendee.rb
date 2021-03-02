class Attendee

  attr_reader :name, :budget

  def initialize(parameters)
    @name = parameters[:name]
    @budget = parameters[:budget].delete('$').to_i
  end
end
