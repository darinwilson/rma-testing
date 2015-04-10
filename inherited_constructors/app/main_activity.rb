class Parent
  def initialize(message)
    puts message
  end
end

class Child < Parent
end

class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    p = Parent.new("hello")
    c = Child.new("hello")
  end
end
