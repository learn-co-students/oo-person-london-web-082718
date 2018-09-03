class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness = [[10, @happiness].min, 0].max
  end

  def hygiene
    @hygiene = [[10, @hygiene].min, 0].max
  end

  def happy?
    if @happiness > 7
      !!@happiness
    else !@happiness
    end
  end

  def clean?
    if @hygiene > 7
      !!@hygiene
    else !@hygiene
    end
  end

  def get_paid(salary)
    @bank_account += 100
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [self, friend].each do |person|
      person.happiness += 3
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      [self, person].each do |per|
        per.happiness -= 2
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      [self, person].each do |per|
        per.happiness += 1
      end
      "blah blah sun blah rain"
    else "blah blah blah blah blah"
    end
  end
end
