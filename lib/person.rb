# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    PERSON = []
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        case
        when happiness > 10 
            @happiness = 10 
        when
            happiness < 0
            @happiness = 0
        else 
            @happiness = happiness
        end
   
    end

    def happy?
        if happiness > 7
            return true 
        else 
            false 
        end
    end

    def hygiene=(hygiene)
        case 
        when hygiene > 10
            @hygiene = 10 
        when 
            hygiene < 0 
            @hygiene = 0
        when 
            @hygiene = hygiene
        end
    end 

    def clean?
        if hygiene > 7 
            return true
        else
            false
        end
    end 

    def get_paid(salary)
        @bank_account += salary
         "all about the benjamins"
    end

    def take_bath
        @hygiene +=4
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"   
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
          if  topic == "politics"
             self.happiness -= 2
             friend.happiness -= 2
        "blah blah partisan blah lobbyist"
          elsif
            topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
          else
            "blah blah blah blah blah"
          end
    end

end