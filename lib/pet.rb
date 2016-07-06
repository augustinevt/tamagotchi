class Pet

  @@pet

  define_singleton_method(:pet) do
    @@pet
  end

  define_method(:initialize) do |name|
    @name = name
    @food = {level: 10, last_time: Time.now()}
    @rest = {level: 10, last_time: Time.now()}
    @activity = {level: 10, last_time: Time.now()}
    @@pet = self
    # @@pets.push(self)
  end

  define_method(:name) do
    @name
  end
  define_method(:rest) do
    @rest
  end
  define_method(:food) do
    @food
  end
  define_method(:activity) do
    @activity
  end

  define_method(:is_alive?) do
    if @food[:level] > 0 && @rest[:level] > 0 && @activity[:level] > 0
      return true
    else
      return false
    end
  end


  define_method(:feed) do
    update()
    alive = is_alive?()
    if(alive)
      @food[:level] += 1
      return food()[:level]
    else
      'your pet is dead, long live your pet'
    end
  end

  define_method(:go_to_bed) do
    update()
    alive = is_alive?()
    if(alive)
      @rest[:level] += 1
      return rest()[:level]
    else
      'your pet is dead, long live your pet'
    end
  end

  define_method(:play) do
    update()
    alive = is_alive?()
    if(alive)
      @activity[:level] += 1
      return activity()[:level]
    else
      'your pet is dead, long live your pet'
    end
  end

  define_method(:update) do |time = nil|
    new_time = time ? time : Time.now()
    @food[:level] =  (@food[:level] - (( new_time - @food[:last_time] ) / 60) ).ceil()
    @rest[:level] =  (@rest[:level] - (( new_time - @rest[:last_time] ) / 60) ).ceil()
    @activity[:level] =  (@activity[:level] - (( new_time - @activity[:last_time] ) / 60) ).ceil()
  end
end
