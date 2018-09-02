require 'pry'

class Person
  
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name 
  
  
  def initialize (name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

def happiness
   @happiness = [[10, @happiness].min, 0].max
 
end

  def hygiene
   @hygieney = [[10, @hygiene].min, 0].max
  end
  
  def happy?
    if @happiness > 7
      true
    else  
      false
    end
  end
  
  def clean?
    if @hygiene > 7
      true
    else  
      false
    end
  end
  
  def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"
  end
  
  def take_bath 
  self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  if self.hygiene < 0 
    self.hygiene += 1
  end
    self.happiness += 2
    if self.happiness > 10
      self.happiness = 10
    end
      return "♪ another one bites the dust ♫"
    end

def call_friend (name)
  self.happiness += 3
   if self.happiness > 10
      self.happiness = 10
    end
  name.happiness += 3
   if name.happiness > 10
      name.happiness = 10
    end
    "Hi #{name.name}! It's #{self.name}. How are you?"
  
  
end
  
  def start_conversation (name, topic)
    if topic == "politics"
      self.happiness -= 2
      if self.happiness > 10
      self.happiness = 10
    end
      name.happiness -= 2
    if name.happiness > 10
      name.happiness = 10
    end
      return 'blah blah partisan blah lobbyist'
    end
    if topic == "weather"
      self.happiness += 1
      if self.happiness > 10
      self.happiness = 10
    end
      name.happiness += 1
    if name.happiness > 10
      name.happiness = 10
    end
    return "blah blah sun blah rain"
  end
else
  return "blah blah blah blah blah"
  end



end