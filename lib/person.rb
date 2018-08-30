# your code goes here
class Person

  attr_accessor :bank_account
  attr_reader :name

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  #Happiness getters & setters
  def happiness=(index_num)
    if index_num > 10
      @happiness = 10
    elsif
      index_num < 0
      @happiness = 0
    else
      @happiness = index_num
    end
  end

  def happiness
    @happiness
  end

  #Hygene getter and setters
  def hygiene=(index_num)
    if index_num > 10
      @hygiene = 10
    elsif
      index_num < 0
      @hygiene = 0
    else
      @hygiene = index_num
    end
  end

  def hygiene
    @hygiene
  end

  #non-attribute instance methods
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

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end


  # #take_bath
  #       makes the person cleaner by 4 points (FAILED - 1)
  #       returns a song (FAILED - 2)
  #       can't make a person cleaner by 10 points (hint: use the custom #hygiene= method) (FAILED - 3)
  #       calls on the #hygiene= method to increment hygiene (FAILED - 4)

  def take_bath
    @hygiene += 4
    if @hygiene > 10
      self.hygiene=(@hygiene)
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def take_bath
    @hygiene += 4
    if @hygiene > 10
      self.hygiene=(@hygiene)
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    if @hygiene < 0
      self.hygiene=(@hygiene)
    end
    @happiness += 2
    if @happiness > 10
      self.happiness=(@happiness)
    end
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    if @happiness > 10
      self.happiness=(@happiness)
    elsif friend.happiness > 10
      friend.hygiene=(friend.happiness)
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      @happiness -= 2
      person.happiness -= 2
      if @happiness < 0
        self.happiness=(@happiness)
      elsif person.happiness < 0
        person.happiness=(person.happiness)
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness += 1
      person.happiness += 1
      if @happiness > 0
        self.happiness=(@happiness)
      elsif person.happiness > 0
        person.happiness=(person.happiness)
      end
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end #end of class
