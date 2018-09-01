require 'pry'

class Person

attr_accessor :bank_account, :happiness, :hygiene, :salary, :friend, :topic
attr_reader :name

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene  = hygiene
  end

  def happiness=(new_happiness)
    #binding.pry
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    #binding.pry
    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def get_paid(salary)
    @salary = salary
    @bank_account += salary
    notif = "all about the benjamins"
  end


  def take_bath
    self.hygiene=(@hygiene +=4)

    # Ruby - Calling setters from within an object [duplicate]
    # https://stackoverflow.com/questions/13715254/ruby-calling-setters-from-within-an-object

    song = "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene -=3)
    self.happiness=(@happiness +=2)

    song = "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3     # equiv. to self.happiness=(@happiness +=3)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -=2
      friend.happiness -=2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness +=1
      friend.happiness +=1
      return 'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end

  end

end
