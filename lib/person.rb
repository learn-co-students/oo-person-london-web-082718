require "pry"

class Person
  attr_reader :name
  attr_accessor :bank_account, :get_paid, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

def hygiene
#sets max hygiene
[[10, @hygiene].min, 0].max
end

def happiness
#sets max hygiene
[[10, @happiness].min, 0].max
end

def happy?
  @happiness > 7 ? true : false
end

def clean?
  @hygiene > 7 ? true : false
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  # binding.pry
    self.hygiene += 4
    # binding.pry
  "♪ Rub-a-dub just relaxing in the tub ♫"
end


def work_out
    self.hygiene -= 3
    self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness -= 2
    friend.happiness -= 2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end

end
