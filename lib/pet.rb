class Pet
  define_method(:initialize) do |name|
    @name = name
    @food = {level: 10, last_time: Time.now()}
    @rest = {level: 10, last_time: Time.now()}
    @activity = {level: 10, last_time: Time.now()}
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

end
