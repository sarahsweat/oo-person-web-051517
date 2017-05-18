require "pry"

class Person

  attr_accessor :balance
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
    @balance
  end

  def bank_account=(amount)
    @balance = amount
  end

  def happiness=(index)
    if index > 10
      @happiness = 10
    elsif index < 0
      @happiness = 0
    else
      @happiness = index
    end
  end

  def hygiene=(index)
    if index > 10
      @hygiene = 10
    elsif index < 0
      @hygiene = 0
    else
      @hygiene = index
    end
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

  def get_paid(salary)
    @balance += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene+4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene-3
    self.happiness = @happiness+2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness+3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person,topic)
    if topic == "politics"
      self.happiness = @happiness-2
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness = @happiness +1
      person.happiness += 1
      return 'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

end
