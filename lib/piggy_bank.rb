class PiggyBank

    def initialize
      @storage = []
    end
  
    def insert(coin)
      @storage << coin
    end
  
    def shake
      if @storage.empty?
        nil
      else
        'clink'
      end
    end
  
    def break
      @storage.count
    end
  end